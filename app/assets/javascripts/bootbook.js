$(document).ready(function() {
  toggleView();
  initMap();
})

function initMap() {
  // google.maps.controlStyle = 'azteca' // allow 'old-style' Pan Controls w/ new map; thru Aug '16
  // var map;
  myLatLng = {lat: 37.784580, lng: -122.397437};
  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 11,
    fullscreenControl: false,
    // panControl: true, // doesn't work even with 'azteca' - forget about it
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var defaultBounds = new google.maps.LatLngBounds(
    new google.maps.LatLng(37.784580, -122.397437),
    new google.maps.LatLng(37.784580, -122.397437)
  );
  var options = { bounds: defaultBounds };

};























function toggleView() {
  $("#toggle-view").on("click", function(event) {
    event.preventDefault();
    if ($('#map-view').is(':hidden')) {
      $('#grid-view').hide();
      $('#map-view').show();
      $('#toggle-view')[0].text = "Show as Grid"
    } else {
      $('#map-view').hide();
      $('#grid-view').show();
      $('#toggle-view')[0].text = "Show as Map"
    }
  })
}
