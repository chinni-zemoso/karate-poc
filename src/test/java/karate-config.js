function fn() {    
  var env = karate.env; // get system property 'karate.env'
  env = 'mock'
  karate.log('karate.env system property was:', env);

  var config = {
    env: env,
	myVarName: 'someValue'
  }
 if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}