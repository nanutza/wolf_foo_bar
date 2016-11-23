function initMap() {
  // Styles a map in night mode.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 40.774, lng: -73.945},
    zoom: 12,
    // styles: [
    //   {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
    //   {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
    //   {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
    //   {
    //     featureType: 'administrative.locality',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#d59563'}]
    //   },
    //   {
    //     featureType: 'poi',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#d59563'}]
    //   },
    //   {
    //     featureType: 'poi.park',
    //     elementType: 'geometry',
    //     stylers: [{color: '#263c3f'}]
    //   },
    //   {
    //     featureType: 'poi.park',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#6b9a76'}]
    //   },
    //   {
    //     featureType: 'road',
    //     elementType: 'geometry',
    //     stylers: [{color: '#38414e'}]
    //   },
    //   {
    //     featureType: 'road',
    //     elementType: 'geometry.stroke',
    //     stylers: [{color: '#212a37'}]
    //   },
    //   {
    //     featureType: 'road',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#9ca5b3'}]
    //   },
    //   {
    //     featureType: 'road.highway',
    //     elementType: 'geometry',
    //     stylers: [{color: '#746855'}]
    //   },
    //   {
    //     featureType: 'road.highway',
    //     elementType: 'geometry.stroke',
    //     stylers: [{color: '#1f2835'}]
    //   },
    //   {
    //     featureType: 'road.highway',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#f3d19c'}]
    //   },
    //   {
    //     featureType: 'transit',
    //     elementType: 'geometry',
    //     stylers: [{color: '#2f3948'}]
    //   },
    //   {
    //     featureType: 'transit.station',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#d59563'}]
    //   },
    //   {
    //     featureType: 'water',
    //     elementType: 'geometry',
    //     stylers: [{color: '#17263c'}]
    //   },
    //   {
    //     featureType: 'water',
    //     elementType: 'labels.text.fill',
    //     stylers: [{color: '#515c6d'}]
    //   },
    //   {
    //     featureType: 'water',
    //     elementType: 'labels.text.stroke',
    //     stylers: [{color: '#17263c'}]
    //   }
    // ]
    styles: [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8ec3b9"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1a3646"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#4b6878"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#64779e"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.province",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#4b6878"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#334e87"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#283d6a"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#6f9ba5"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "poi.business",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#3C7680"
      }
    ]
  },
  {
    "featureType": "road",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#304a7d"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#98a5be"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#2c6675"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#255763"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#b0d5ce"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#98a5be"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#283d6a"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#3a4762"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#0e1626"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#4e6d70"
      }
    ]
  }
]

  });

  var line_1_shape = require('./lib/seeds/shapes_1.json');

  var circle = document.getElementById('circle'),
      x = 40.702068,
      y = -74.013664;

  console.log(circle);

  // function go(){
  //
  //   // circle.style.left = x + 'px';
  //   // circle.style.top = y + 'px';
  //   line_1_shape.forEach(function () {
  //     | x, y | console.log(circle);
  //     var timer = setTimeout(100);
  //           clearInterval(timer);
  //   });
  //
  //
  //   }
  // };

  document.getElementById('start').onclick = go

  var lineCoordinates = [
  new google.maps.LatLng(30.055487, 31.279766),
  new google.maps.LatLng(30.223356, 31.324345),
  new google.maps.LatLng(30.345656, 31.567677),
  new google.maps.LatLng(30.565678, 31.676887)
];
createPolyline(map, lineCoordinates, lineSymbol);

var linePath;
function createPolyline(map,lineCoordinates,lineSymbol){
  linePath = new google.maps.Polyline({
    path: lineCoordinates,
    geodesic: true,
    strokeColor: '#FF0000',
    strokeOpacity: 1.0,
    strokeWeight: 2
   });
 linePath.setMap(map);
}

}
