function startMap(map) {
  var map;
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 52.367145, lng: 4.886256},
    zoom: 10
  });
  const markers = JSON.parse(document.getElementById('map').dataset.markers);
  markers.forEach((marker) => {
    var LatLng = new google.maps.LatLng(marker.lat, marker.lng);
    var marker = new google.maps.Marker({
      position: LatLng,
      map: map,
      title: marker.title
    });
    marker.addListener('click', showInfo);
    function showInfo() {
      alert(marker.title);
    }
  })
}


export { startMap };
