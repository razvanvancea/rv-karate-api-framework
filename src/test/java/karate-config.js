function() {
    var env = karate.env;
    karate.log('karate.env system property was:', env); // get java system property 'karate.env'
    karate.configure("ssl", true);
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);

    if (!env) {
        env = 'rvLocal';
    }
    var config = {
        env: env,
        APIUrl: 'https://jsonplaceholder.typicode.com'
    };

    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    return config;
}