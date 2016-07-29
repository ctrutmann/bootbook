$(document).ready(function() {
  switchToGridViewOnUsersIndexLoad();
  toggleView();
})

function switchToGridViewOnUsersIndexLoad () {
  var currentPath = window.location.pathname;
  if (currentPath = '/users') {
    switchToGridView();
  }
}

function toggleView() {
  $("#toggle-view").on("click", function(event) {
    event.preventDefault();
    if ($('#toggle-view')[0].text == "Show as Map") {
      $('#toggle-view')[0].text = "Show as Grid";
      switchToMapView();
    } else {
      $('#toggle-view')[0].text = "Show as Map";
      switchToGridView();
    }
  })
}

function switchToMapView() {
  $('#grid-view').hide();
  $('#map-view').show();
  initMap();
  populateMapViewWithAllBoots();
}

function switchToGridView() {
  // initMap();
  $('#map-view').hide();
  $('#grid-view').show();
}

function initMap() {
  if (($('#map').length) > 0) {
    myLatLng = {lat: 37.784580, lng: -122.397437};
    map = new google.maps.Map(document.getElementById('map'), {
      center: myLatLng,
      zoom: 11,
      fullscreenControl: false,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var defaultBounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(37.784580, -122.397437),
      new google.maps.LatLng(37.784580, -122.397437)
    );
    var options = { bounds: defaultBounds };
  }
}

function populateMapViewWithAllBoots() {
  $.ajax({
    url: '/users',
    method: 'GET',
    dataType: 'json'
  }).done(function(response){
    initMap();   // maybe don't need this here again...
    formatDataAndPlaceMarkers(response.filecontent);
  }).fail(function(response){
    console.log("shit");
  });
}

function formatDataAndPlaceMarkers(users) {
  users.forEach(function(user){
    var name = user.name;
    var id = user.id;
    var userPageLink = '/users/' + id;
    var profile_image = user.profile_image;

    var locationStringShort = generateLocationStringShort(user);
    var locationStringLong = generateLocationStringLong(user);
    var infoWindowContent = constructInfoWindowContent(profile_image, name, userPageLink, locationStringShort);

    var queryString = {locationString: locationStringLong}
    $.ajax({
      url: '/geocode',
      method: 'GET',
      data: queryString,
      dataType: 'json'
    }).done(function(response){
      var actualResponse = response.response.results[0];
      var latLng = actualResponse.geometry.location;
      setMarker(latLng, infoWindowContent);
    }).fail(function(response){
      console.log("fail");
    });
  });
}

function generateLocationStringShort(user) {
  var city = user.city;
  var state = user.state;
  var postal_code = user.postal_code;
  var country = user.country;
  var locationString = "";
  if (city != null) { locationString += city; };
  if (state != null) {
    if (city != null) {
      locationString += (', ' + state);
    } else {
      locationString += (state);
    };
  };
  if (country != null) {
    if (country != "United States") {
      if (locationString != "") {
        locationString += (' ' + country);
      } else {
        locationString += country;
      }
    }
  };
  return locationString;
}

function generateLocationStringLong(user) {
  var city = user.city;
  var state = user.state;
  var postal_code = user.postal_code;
  var country = user.country;
  var locationString = "";
  if (city != null) { locationString += city; };
  if (state != null) {
    if (city != null) {
      locationString += (', ' + state);
    } else {
      locationString += (state);
    };
  };
  if (postal_code != null) {
    if (locationString != "") {
      locationString += (' ' + postal_code);
    } else {
      locationString += postal_code;
    }
  };
  if (country != null) {
    if (country != "United States") {
      if (locationString != "") {
        locationString += (' ' + country);
      } else {
        locationString += country;
      }
    }
  };
  return locationString;
}

function constructInfoWindowContent(profile_image, name, userPageLink, locationString) {
  contentString =
    '<div class="info-window-content">' +
      '<div><a href="' + userPageLink + '"><img src="' + profile_image + '" width="40" height="40" class="center marker-image" alt="user picture"></a></div><div class="marker-name"><a href="' + userPageLink + '">' + name + '</a></div>' +
      '<div id="bodyContent">' +
        '<p>' + locationString + '<p>' +
      '</div>' +
    '</div>';
  return contentString;
}

function setMarker(latLng, infoWindowContent) {
  var infowindow = new google.maps.InfoWindow;
  var marker = new google.maps.Marker({
    map: map,
    position: latLng,
  });
  infowindow.setContent(infoWindowContent);
  marker.addListener('click', function() {
    if (infowindow.anchor == null) {
      infowindow.open(map, marker);
    } else {
      infowindow.close();
    }
  })
}
