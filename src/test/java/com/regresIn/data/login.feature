Feature: credemciales de usuario
  Scenario:
    * def usuarioLogin = read('classpath:com/regresIn/data/usuarioLogin.json')
    * def loginCall = call read('classpath:com/regresIn/utilities/TokenGenerator.feature@login') usuarioLogin

    * def customerToken = loginCall.token
    * def inActiveCustomerToken = 'ertifodl5967fnfkdkif78'
    * def expiredCustomerToken = 'lkhjjsjsjkkshdfcb0c9ty'
