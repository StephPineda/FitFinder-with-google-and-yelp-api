// import React, {Component, Fragment} from 'react'

const axios = require("axios");

// Make a request for a user with a given ID
axios
  .get(
    "https://api.yelp.com/v3/businesses/search?&location=${}&attributes=deals&term=fitness gym"
  )
  .then(function(response) {
    // handle success
    console.log(response);
  })
  .catch(function(error) {
    // handle error
    console.log(error);
  })
  .finally(function() {
    // always executed
  });

// export default Map
