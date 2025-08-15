<script setup>
import { ref } from "vue";

import Sidebar from "dashboard/components/Sidebar.vue";

const stats = ref([
  {
    name: "Total Feedbacks",
    value: "24",
    change: "+12%",
    changeType: "positive",
  },
  { name: "Pending Reviews", value: "8", change: "+2", changeType: "neutral" },
  { name: "Teams", value: "5", change: "+1", changeType: "positive" },
  { name: "Active Users", value: "32", change: "+8%", changeType: "positive" },
]);

const recentFeedbacks = ref([
  {
    id: 1,
    sender: "John Doe",
    receiver: "Jane Smith",
    title: "Great teamwork on project Alpha",
    status: "Submitted",
    date: "2 hours ago",
  },
  {
    id: 2,
    sender: "Alice Johnson",
    receiver: "Bob Wilson",
    title: "Excellent presentation skills",
    status: "Reviewed",
    date: "1 day ago",
  },
  {
    id: 3,
    sender: "Mike Brown",
    receiver: "Sarah Davis",
    title: "Outstanding leadership",
    status: "Completed",
    date: "3 days ago",
  },
]);
</script>

<template>
  <!-- Page Content -->
  <main class="flex-1 overflow-y-auto bg-gray-50 p-6">
    <!-- Dashboard Content (shown when route is /app) -->
    <div>
      <!-- Stats Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div
          v-for="stat in stats"
          :key="stat.name"
          class="bg-white rounded-lg shadow p-6"
        >
          <div class="flex items-center">
            <div class="flex-1">
              <p class="text-sm font-medium text-gray-600">
                {{ stat.name }}
              </p>
              <p class="text-2xl font-semibold text-gray-900">
                {{ stat.value }}
              </p>
            </div>
            <div class="flex items-center">
              <span
                :class="{
                  'text-green-600': stat.changeType === 'positive',
                  'text-red-600': stat.changeType === 'negative',
                  'text-gray-600': stat.changeType === 'neutral',
                }"
                class="text-sm font-medium"
              >
                {{ stat.change }}
              </span>
            </div>
          </div>
        </div>
      </div>

      <!-- Quick Actions -->
      <div class="bg-white rounded-lg shadow p-6 mb-8">
        <h3 class="text-lg font-medium text-gray-900 mb-4">Quick Actions</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
          <RouterLink
            to="/app/feedbacks"
            class="flex items-center p-4 border border-gray-200 rounded-lg hover:border-indigo-300 hover:bg-indigo-50 transition-colors duration-200"
          >
            <div
              class="w-10 h-10 bg-indigo-100 rounded-lg flex items-center justify-center mr-4"
            >
              <svg
                class="w-6 h-6 text-indigo-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 6v6m0 0v6m0-6h6m-6 0H6"
                ></path>
              </svg>
            </div>
            <div>
              <p class="font-medium text-gray-900">Send Feedback</p>
              <p class="text-sm text-gray-600">
                Share feedback with team members
              </p>
            </div>
          </RouterLink>

          <RouterLink
            to="/app/teams"
            class="flex items-center p-4 border border-gray-200 rounded-lg hover:border-indigo-300 hover:bg-indigo-50 transition-colors duration-200"
          >
            <div
              class="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center mr-4"
            >
              <svg
                class="w-6 h-6 text-green-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"
                ></path>
              </svg>
            </div>
            <div>
              <p class="font-medium text-gray-900">Manage Teams</p>
              <p class="text-sm text-gray-600">Create and organize teams</p>
            </div>
          </RouterLink>

          <RouterLink
            to="/app/users"
            class="flex items-center p-4 border border-gray-200 rounded-lg hover:border-indigo-300 hover:bg-indigo-50 transition-colors duration-200"
          >
            <div
              class="w-10 h-10 bg-purple-100 rounded-lg flex items-center justify-center mr-4"
            >
              <svg
                class="w-6 h-6 text-purple-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197m13.5-9a2.5 2.5 0 11-5 0 2.5 2.5 0 015 0z"
                ></path>
              </svg>
            </div>
            <div>
              <p class="font-medium text-gray-900">View Users</p>
              <p class="text-sm text-gray-600">Browse team members</p>
            </div>
          </RouterLink>
        </div>
      </div>

      <!-- Recent Feedbacks -->
      <div class="bg-white rounded-lg shadow">
        <div class="px-6 py-4 border-b border-gray-200">
          <h3 class="text-lg font-medium text-gray-900">Recent Feedbacks</h3>
        </div>
        <div class="divide-y divide-gray-200">
          <div
            v-for="feedback in recentFeedbacks"
            :key="feedback.id"
            class="px-6 py-4 hover:bg-gray-50"
          >
            <div class="flex items-center justify-between">
              <div class="flex-1">
                <p class="text-sm font-medium text-gray-900">
                  {{ feedback.title }}
                </p>
                <p class="text-sm text-gray-600">
                  From {{ feedback.sender }} to {{ feedback.receiver }}
                </p>
              </div>
              <div class="flex items-center space-x-4">
                <span
                  :class="{
                    'bg-yellow-100 text-yellow-800':
                      feedback.status === 'Submitted',
                    'bg-blue-100 text-blue-800': feedback.status === 'Reviewed',
                    'bg-green-100 text-green-800':
                      feedback.status === 'Completed',
                  }"
                  class="px-2 py-1 text-xs font-medium rounded-full"
                >
                  {{ feedback.status }}
                </span>
                <span class="text-sm text-gray-500">{{ feedback.date }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>
