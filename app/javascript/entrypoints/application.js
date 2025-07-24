import { createApp } from "vue";
import "../dashboard/style.css";
import App from "../dashboard/App.vue";

const app = createApp(App);

window.onload = () => {
  app.mount("#app");
};
