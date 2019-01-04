
function initGeolocMobile() {
  if (navigator && navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
    }
  else {
    console.log('Geolocation is not supported');
  }
}

function errorCallback() {
  console.log('No geollocation data available');
}

function successCallback(position) {
  console.log('latitude is ' + position.coords.latitude);
  console.log('longitude is ' + position.coords.longitude);
}

export { initGeolocMobile };
