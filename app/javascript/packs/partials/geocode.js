
function getLatLng() {
  var address = document.getElementById("user_practice_street").value
    + ", "
    + document.getElementById("user_practice_city").value;
  var geocoder = new google.maps.Geocoder();
  console.log(address);
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == 'OK') {
      console.log(results[0].geometry.location.lat());
      document.getElementById("input-lat").value = results[0].geometry.location.lat();
      console.log(results[0].geometry.location.lng());
      document.getElementById("input-lng").value = results[0].geometry.location.lng();
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

function getLatLngBatch() {
  const psychs = JSON.parse(document.getElementById('kaboom').dataset.psychs);
  psychs.forEach((psych) => {
    if (psych.lat === null ) {
      var address = psych.street + ", " + psych.city;
      var id = psych.id;
      console.log(address);
      var geocoder = new google.maps.Geocoder();
      geocoder.geocode( { 'address': address}, function(results) {
        var lat = (results[0].geometry.location.lat());
        var lng = (results[0].geometry.location.lng());
        console.log(lat + "," + lng);
        saveLatLng(lat, lng, id);
      });
    }
  });
}

function saveLatLng(lat, lng, id) {
  var urll = '/users/' + id;
  // get session auth token: value of attribute "content" of element "meta", where name="csrf-token"
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  // update lat lng
  $.ajax({
    type: 'PATCH',
    url: urll,
    datatype: 'js',
    data: { user: { lat: lat, lng: lng}, authenticity_token: AUTH_TOKEN },
    complete: function() {},
    success: function() {
      alert('Ajax kampioen!')
    },
    error: function() {
      // alert('Ajax gedegradeerd!')
    }
  });

}


export { getLatLng };
export { getLatLngBatch };
