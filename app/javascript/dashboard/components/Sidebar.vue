<script setup></script>

<template>
  <div class="w-64 bg-indigo-700 shadow-lg">
    <!-- Logo/Header -->
    <div class="p-6 border-b border-indigo-600">
      <h1 class="text-2xl font-bold text-white">Team Feedback</h1>
      <p class="text-indigo-200 text-sm mt-1">Performance Management</p>
    </div>

    <!-- Navigation Menu -->
    <nav class="mt-6">
      <div class="px-4 space-y-2">
        <RouterLink
          to="/app"
          class="flex items-center px-4 py-3 text-indigo-100 hover:bg-indigo-600 rounded-lg transition-colors duration-200"
          active-class="bg-indigo-600 text-white"
        >
          <svg
            class="w-5 h-5 mr-3"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2H5a2 2 0 00-2-2z"
            ></path>
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M8 5a2 2 0 012-2h4a2 2 0 012 2v6H8V5z"
            ></path>
          </svg>
          Dashboard
        </RouterLink>

        <RouterLink
          to="/app/feedbacks"
          class="flex items-center px-4 py-3 text-indigo-100 hover:bg-indigo-600 rounded-lg transition-colors duration-200"
          active-class="bg-indigo-600 text-white"
        >
          <svg
            class="w-5 h-5 mr-3"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
            ></path>
          </svg>
          Feedbacks
        </RouterLink>

        <RouterLink
          to="/app/teams"
          class="flex items-center px-4 py-3 text-indigo-100 hover:bg-indigo-600 rounded-lg transition-colors duration-200"
          active-class="bg-indigo-600 text-white"
        >
          <svg
            class="w-5 h-5 mr-3"
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
          Teams
        </RouterLink>

        <RouterLink
          to="/app/users"
          class="flex items-center px-4 py-3 text-indigo-100 hover:bg-indigo-600 rounded-lg transition-colors duration-200"
          active-class="bg-indigo-600 text-white"
        >
          <svg
            class="w-5 h-5 mr-3"
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
          Users
        </RouterLink>

        <RouterLink
          to="/app/accounts"
          class="flex items-center px-4 py-3 text-indigo-100 hover:bg-indigo-600 rounded-lg transition-colors duration-200"
          active-class="bg-indigo-600 text-white"
        >
          <svg
            class="w-5 h-5 mr-3"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"
            ></path>
          </svg>
          Accounts
        </RouterLink>
      </div>
    </nav>

    <!-- User Profile Section -->
    <div class="absolute bottom-0 w-64 p-4 border-t border-indigo-600">
      <div class="flex items-center">
        <div
          class="w-8 h-8 bg-indigo-500 rounded-full flex items-center justify-center"
        >
          <span class="text-white text-sm font-medium">U</span>
        </div>
        <div class="ml-3">
          <p class="text-sm font-medium text-white">User Name</p>
          <p class="text-xs text-indigo-200">user@example.com</p>
        </div>
      </div>
    </div>
  </div>
</template>
