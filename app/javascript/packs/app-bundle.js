import ReactOnRails from "react-on-rails";

// import Gyms from "../bundles/Calendar/components/Gyms";
import Calendar from "../bundles/Calendar/components/Calendar";

// This is how react_on_rails can see the Components in the browser.
ReactOnRails.register({
  Gyms,
  Calendar
});
