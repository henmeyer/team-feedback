import { createWebHistory, createRouter } from "vue-router";

import dashboardRoutes from "./dashboard/dashboard.routes";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: "/",
      redirect: "/app",
    },
    ...dashboardRoutes.routes,
  ],
});

export default router;
