function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }

  var petstore = 'https://petstore.swagger.io/';
  var petIdFilePath = 'src/test/resources/petstore/petId.json'; // Definición de la ruta aquí

  var config = {
    env: env,
    myVarName: 'someValue',
    petIdFilePath: petIdFilePath // Agregar ruta a la configuración
  }
  return config;
}
