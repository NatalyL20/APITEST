function fn() {

     var config = {
          regresIn: 'https://reqres.in'
      }

      karate.configure('logPrettyRequest', true);
      karate.configure('logPrettyResponse', true);
      karate.configure('ssl', true);

     return config;
  }