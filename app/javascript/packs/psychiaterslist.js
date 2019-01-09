import "bootstrap";
import { expertiseFilter } from "./partials/expertisefilter"
import { startMap } from "./partials/googlemaps.js.erb"
import { getLatLng, getLatLngBatch } from "./partials/geocode"

const dev001 = document.getElementById("kaboom").addEventListener("click", getLatLngBatch);
startMap();

console.log("hello from psychiaterslist.js")
