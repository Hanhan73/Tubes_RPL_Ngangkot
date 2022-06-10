// var myLatlng = { lat: -6.914744, lng: 107.609811 };
// var mapOptions = {
//   center: myLatlng,
//   zoom: 12,
//   mapTypeId: google.maps.MapTypeId.ROADMAP,
// };

var polylineOptionsActual = new google.maps.Polyline({
  strokeColor: "#000000",
  strokeOpacity: 1.0,
  strokeWeight: 10,
});

function initMap() {
  const directionsRenderer = new google.maps.DirectionsRenderer({
    polylineOptions: polylineOptionsActual,
  });
  const directionsService = new google.maps.DirectionsService();
  const btnSubmit = document.getElementById("btn_submit");
  const form = document.getElementById("form");
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 12,
    center: { lat: -6.914744, lng: 107.609811 },
    disableDefaultUI: true, // a way to quickly hide all controls
    zoomControl: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
  });

  var options1 = {
    // type: ["(cities)"],
    componentRestrictions: { country: "id" },
  };
  var input1 = document.getElementById("from");
  var autocomplete1 = new google.maps.places.Autocomplete(input1, options1);

  var input2 = document.getElementById("to");
  var autocomplete2 = new google.maps.places.Autocomplete(input2, options1);

  directionsRenderer.setMap(map);
  //   calculateAndDisplayRoute(directionsService, directionsRenderer);
  btnSubmit.addEventListener("click", () => {
    console.log(document.getElementById("from").value);
    console.log(document.getElementById("to").value);
    calculateAndDisplayRoute(directionsService, directionsRenderer);
  });
  // otomatis buat directon kalau from dan to udah punya value
  if (input1.value && input2.value) {
    console.log(document.getElementById("from").value);
    console.log(document.getElementById("to").value);
    calculateAndDisplayRoute(directionsService, directionsRenderer);
  }
}

function calculateAndDisplayRoute(directionsService, directionsRenderer) {
  directionsService
    .route({
      origin: document.getElementById("from").value,
      destination: document.getElementById("to").value,
      travelMode: google.maps.TravelMode.TRANSIT,
      transitOptions: {
        modes: ["BUS"],
        routingPreference: "FEWER_TRANSFERS" /* LESS_WALKING */,
      },
    })
    .then((response) => {
      directionsRenderer.setDirections(response);
      console.log(response);
      var fare = response.routes[0].fare.text;
      var distance = response.routes[0].legs[0].distance.text;
      var time = response.routes[0].legs[0].duration.text;
      $("#ongkos").html(fare);
      $("#jarak").html(distance);
      $("#waktu").html(time);
    })
    .catch((e) => window.alert("Invalid input"));
}
