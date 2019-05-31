function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var Poolinput = document.getElementById('pool_address');

    if (Poolinput) {
      var autocomplete = new google.maps.places.Autocomplete(Poolinput, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(Poolinput, 'keydown', function(e) {
        if (e.key === "Enter") {
        //   e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };