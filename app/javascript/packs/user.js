import "bootstrap";
import { getLatLng } from "./partials/geocode";

const address_field1 = document.getElementById("user_practice_street");
const address_field2 = document.getElementById("user_practice_city");

// var address = address_field1.value + ", " + address_field2.value;

address_field1.addEventListener("change", getLatLng);
address_field2.addEventListener("change", getLatLng);

// console.log(address);
console.log("Hello from user.js");
