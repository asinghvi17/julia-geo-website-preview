<script setup lang="ts">
import { ref, computed } from 'vue'
import Fuse from 'fuse.js'

interface Package {
  name: string
  description: string
  link: string
  category: string
  tags: string[]
}

const props = defineProps<{
  packages: Package[]
  tags: string[]
  placeholder?: string
}>()

// Derive category order from first appearance in packages array
const categories = computed(() => {
  const seen = new Set<string>()
  const order: string[] = []
  for (const pkg of props.packages) {
    if (!seen.has(pkg.category)) {
      seen.add(pkg.category)
      order.push(pkg.category)
    }
  }
  return order
})

// Fuse.js index — weighted so name matches rank highest, then tags, then description
const fuse = computed(() => new Fuse(props.packages, {
  keys: [
    { name: 'name', weight: 3 },
    { name: 'tags', weight: 2 },
    { name: 'description', weight: 1 },
    { name: 'category', weight: 0.5 },
  ],
  threshold: 0.35,
  includeScore: true,
  ignoreLocation: true,
}))

const search = ref('')
const activeTags = ref<Set<string>>(new Set())

function toggleTag(tag: string) {
  const next = new Set(activeTags.value)
  if (next.has(tag)) {
    next.delete(tag)
  } else {
    next.add(tag)
  }
  activeTags.value = next
}

function clearFilters() {
  search.value = ''
  activeTags.value = new Set()
}

// Tag-filtered base set
function matchesTags(pkg: Package, tags: Set<string>): boolean {
  for (const t of tags) {
    if (!pkg.tags.includes(t)) return false
  }
  return true
}

const isSearching = computed(() => search.value.trim().length > 0)

// When searching: fuzzy results ranked by score. When not: original order.
const filteredPackages = computed(() => {
  const q = search.value.trim()
  const tags = activeTags.value

  if (q) {
    // Fuzzy search, then filter by active tags
    const results = fuse.value.search(q)
    const pkgs = results.map(r => r.item)
    if (tags.size > 0) {
      return pkgs.filter(pkg => matchesTags(pkg, tags))
    }
    return pkgs
  }

  // No search query — just tag filtering, preserve original order
  if (tags.size > 0) {
    return props.packages.filter(pkg => matchesTags(pkg, tags))
  }
  return props.packages
})

// Group by category (preserves original category order when not searching)
const groupedPackages = computed(() => {
  if (isSearching.value) {
    // When searching, show results in a single flat "Results" group ranked by relevance
    if (filteredPackages.value.length > 0) {
      return [{ category: '', pkgs: filteredPackages.value }]
    }
    return []
  }
  // When browsing/filtering by tags, group by category
  const groups: { category: string; pkgs: Package[] }[] = []
  for (const cat of categories.value) {
    const pkgs = filteredPackages.value.filter(p => p.category === cat)
    if (pkgs.length > 0) {
      groups.push({ category: cat, pkgs })
    }
  }
  return groups
})

const totalCount = computed(() => props.packages.length)
const filteredCount = computed(() => filteredPackages.value.length)
const hasFilters = computed(() => search.value.trim() !== '' || activeTags.value.size > 0)
</script>

<template>
  <div class="pkg-explorer">
    <!-- Search -->
    <div class="pkg-search-wrap">
      <input
        v-model="search"
        type="text"
        class="pkg-search"
        :placeholder="placeholder || 'Search packages by name, description, or tag...'"
      />
    </div>

    <!-- Tag pills -->
    <div class="pkg-tags">
      <button
        v-for="tag in tags"
        :key="tag"
        class="pkg-tag"
        :class="{ active: activeTags.has(tag) }"
        @click="toggleTag(tag)"
      >
        {{ tag }}
      </button>
    </div>

    <!-- Status bar -->
    <div class="pkg-status">
      <span>
        Showing {{ filteredCount }} of {{ totalCount }} packages
      </span>
      <button v-if="hasFilters" class="pkg-clear" @click="clearFilters">
        Clear filters
      </button>
    </div>

    <!-- Results -->
    <div v-if="groupedPackages.length > 0" class="pkg-results">
      <div v-for="group in groupedPackages" :key="group.category" class="geo-category">
        <div v-if="group.category" class="geo-category-head">
          <h3>{{ group.category }}</h3>
        </div>
        <div class="geo-pkg-grid">
          <a
            v-for="pkg in group.pkgs"
            :key="pkg.name"
            :href="pkg.link"
            class="geo-pkg"
            target="_blank"
          >
            <strong>{{ pkg.name }}</strong>
            <span>{{ pkg.description }}</span>
            <div class="pkg-card-tags">
              <button
                v-for="tag in pkg.tags"
                :key="tag"
                class="pkg-card-tag"
                :class="{ active: activeTags.has(tag) }"
                @click.prevent.stop="toggleTag(tag)"
              >
                {{ tag }}
              </button>
            </div>
          </a>
        </div>
      </div>
    </div>

    <!-- Empty state -->
    <div v-else class="pkg-empty">
      <p>No packages match your filters.</p>
      <button class="pkg-clear" @click="clearFilters">Clear filters</button>
    </div>
  </div>
</template>

<style scoped>
.pkg-explorer {
  max-width: 1152px;
  margin: 0 auto;
  padding: 0 0 48px;
}

/* Search */
.pkg-search-wrap {
  margin-bottom: 20px;
}

.pkg-search {
  width: 100%;
  padding: 12px 18px;
  border: 1px solid var(--geo-border);
  border-radius: 10px;
  background: var(--geo-surface);
  color: var(--geo-text);
  font-size: 0.95rem;
  font-family: inherit;
  outline: none;
  transition: border-color 0.2s ease;
}

.pkg-search::placeholder {
  color: var(--geo-text-muted);
}

.pkg-search:focus {
  border-color: var(--geo-brand);
}

/* Tag pills */
.pkg-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin-bottom: 20px;
}

.pkg-tag {
  padding: 5px 14px;
  border: 1px solid var(--geo-border);
  border-radius: 20px;
  background: var(--geo-surface);
  color: var(--geo-text-muted);
  font-size: 0.82rem;
  font-family: var(--vp-font-family-mono);
  cursor: pointer;
  transition: all 0.2s ease;
  user-select: none;
}

.pkg-tag:hover {
  border-color: var(--geo-brand);
  color: var(--geo-brand);
}

.pkg-tag.active {
  background: var(--geo-brand);
  border-color: var(--geo-brand);
  color: #ffffff;
}

.dark .pkg-tag.active {
  color: #0f1923;
}

/* Status bar */
.pkg-status {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 32px;
  font-size: 0.88rem;
  color: var(--geo-text-muted);
}

.pkg-clear {
  padding: 3px 12px;
  border: 1px solid var(--geo-border);
  border-radius: 6px;
  background: transparent;
  color: var(--geo-brand);
  font-size: 0.82rem;
  cursor: pointer;
  transition: all 0.2s ease;
}

.pkg-clear:hover {
  border-color: var(--geo-brand);
  background: rgba(42, 127, 98, 0.06);
}

/* Card tags */
.pkg-card-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 4px;
  margin-top: 4px;
}

.pkg-card-tag {
  padding: 2px 8px;
  border: 1px solid var(--geo-border);
  border-radius: 4px;
  background: transparent;
  color: var(--geo-text-muted);
  font-size: 0.72rem;
  font-family: var(--vp-font-family-mono);
  cursor: pointer;
  transition: all 0.15s ease;
}

.pkg-card-tag:hover {
  border-color: var(--geo-brand);
  color: var(--geo-brand);
}

.pkg-card-tag.active {
  background: var(--geo-brand);
  border-color: var(--geo-brand);
  color: #ffffff;
}

.dark .pkg-card-tag.active {
  color: #0f1923;
}

/* Empty state */
.pkg-empty {
  text-align: center;
  padding: 64px 24px;
  color: var(--geo-text-muted);
}

.pkg-empty p {
  margin-bottom: 16px;
  font-size: 1rem;
}

/* Results spacing */
.pkg-results .geo-category {
  margin-bottom: 40px;
}

.pkg-results .geo-category:last-child {
  margin-bottom: 0;
}
</style>
