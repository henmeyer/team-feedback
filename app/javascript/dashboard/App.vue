<template>
  <div
    data-testid="app-container"
    class="dashboard-app"
    :class="{
      'theme-light': theme === 'light',
      'theme-dark': theme === 'dark',
    }"
  >
    <header data-testid="navigation" class="dashboard-header">
      <h1 data-testid="dashboard-title" class="dashboard-title">
        {{ title }}
      </h1>
      <nav class="dashboard-nav">
        <button
          data-testid="action-button"
          @click="toggleTheme"
          class="theme-toggle"
          aria-label="Toggle theme"
        >
          {{ theme === "light" ? "🌙" : "☀️" }}
        </button>
        <button
          data-testid="event-button"
          @click="handleAction"
          class="action-button"
          aria-label="Perform action"
        >
          Action
        </button>
      </nav>
    </header>

    <main data-testid="theme-element" class="dashboard-main">
      <div class="dashboard-content">
        <p>Welcome to your dashboard!</p>
        <div class="dashboard-stats">
          <div class="stat-card">
            <h3>Total Users</h3>
            <p>{{ stats.users }}</p>
          </div>
          <div class="stat-card">
            <h3>Active Teams</h3>
            <p>{{ stats.teams }}</p>
          </div>
          <div class="stat-card">
            <h3>Feedback Items</h3>
            <p>{{ stats.feedback }}</p>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
export default {
  name: "App",
  props: {
    title: {
      type: String,
      default: "Dashboard",
    },
  },
  data() {
    return {
      theme: "light",
      stats: {
        users: 0,
        teams: 0,
        feedback: 0,
      },
    };
  },
  mounted() {
    this.loadStats();
  },
  methods: {
    toggleTheme() {
      this.theme = this.theme === "light" ? "dark" : "light";
    },
    handleAction() {
      this.$emit("action-performed", { timestamp: new Date() });
    },
    async loadStats() {
      try {
        // Simulate API call
        this.stats = {
          users: 42,
          teams: 8,
          feedback: 156,
        };
      } catch (error) {
        console.error("Failed to load stats:", error);
      }
    },
  },
  errorCaptured(err, vm, info) {
    console.error("Error captured in App component:", err, info);
    return false;
  },
};
</script>

<style scoped>
.dashboard-app {
  min-height: 100vh;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
}

.dashboard-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #f8f9fa;
  border-bottom: 1px solid #e9ecef;
}

.theme-dark .dashboard-header {
  background-color: #343a40;
  border-bottom-color: #495057;
  color: white;
}

.dashboard-title {
  margin: 0;
  font-size: 1.5rem;
  font-weight: 600;
}

.dashboard-nav {
  display: flex;
  gap: 1rem;
}

.theme-toggle,
.action-button {
  padding: 0.5rem 1rem;
  border: 1px solid #dee2e6;
  border-radius: 0.375rem;
  background-color: white;
  cursor: pointer;
  transition: all 0.2s;
}

.theme-toggle:hover,
.action-button:hover {
  background-color: #f8f9fa;
}

.theme-dark .theme-toggle,
.theme-dark .action-button {
  background-color: #495057;
  border-color: #6c757d;
  color: white;
}

.theme-dark .theme-toggle:hover,
.theme-dark .action-button:hover {
  background-color: #6c757d;
}

.dashboard-main {
  padding: 2rem;
}

.dashboard-content {
  max-width: 1200px;
  margin: 0 auto;
}

.dashboard-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin-top: 2rem;
}

.stat-card {
  padding: 1.5rem;
  background-color: white;
  border: 1px solid #e9ecef;
  border-radius: 0.5rem;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.theme-dark .stat-card {
  background-color: #495057;
  border-color: #6c757d;
  color: white;
}

.stat-card h3 {
  margin: 0 0 0.5rem 0;
  font-size: 1rem;
  color: #6c757d;
}

.theme-dark .stat-card h3 {
  color: #adb5bd;
}

.stat-card p {
  margin: 0;
  font-size: 2rem;
  font-weight: 700;
  color: #212529;
}

.theme-dark .stat-card p {
  color: white;
}
</style>
