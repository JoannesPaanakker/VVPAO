function startMap(map) {
  var map;
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 52.367145, lng: 4.886256},
    zoom: 10
  });
  const markers = JSON.parse(document.getElementById('map').dataset.markers);
  markers.forEach((mark) => {
    var LatLng = new google.maps.LatLng(mark.lat, mark.lng);
    var marker = new google.maps.Marker({
      position: LatLng,
      map: map,
      title: mark.title
    });
    marker.addListener('click', showInfo);
    function showInfo() {
      document.getElementById(`${mark.id}-mark`).click();
    }
  })
}


export { startMap };
