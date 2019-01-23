import "bootstrap";
import { cancelNewExp } from "./partials/cancel";
import { cancelNewAud } from "./partials/cancel-aud";
import { setBorder } from './partials/set-border';

setBorder();
cancelNewExp();
cancelNewAud();

console.log("Hello from application.js");
