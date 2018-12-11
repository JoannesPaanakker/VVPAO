function startMap() {
  var map;
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 52.367145, lng: 4.886256},
    zoom: 10
  });
  console.log("startMap loaded");
}


export { startMap };
