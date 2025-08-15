import Dashboard from "./Dashboard.vue";
import feedbacksRoutes from "./feedbacks/feedbacks.routes";

export default {
  routes: [
    {
      path: "/app",
      component: Dashboard,
      children: [...feedbacksRoutes.routes],
    },
  ],
};
