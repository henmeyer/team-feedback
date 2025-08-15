import { createApp } from "vue";
import App from "../dashboard/App.vue";
import router from "../dashboard/routes";

const app = createApp(App);
app.use(router);

window.onload = () => {
  app.mount("#app");
};
