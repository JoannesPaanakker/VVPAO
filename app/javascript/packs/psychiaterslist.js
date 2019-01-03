import "bootstrap";
import { expertiseFilter } from "./partials/expertisefilter"
import { startMap } from "./partials/googlemaps"
import { getLatLng, getLatLngBatch } from "./partials/geocode"
import { initGeolocMobile } from "./partials/geoloc-mobile"

const dev001 = document.getElementById("kaboom").addEventListener("click", getLatLngBatch);
startMap();

console.log("hello from psychiaterslist.js")
initGeolocMobile();
