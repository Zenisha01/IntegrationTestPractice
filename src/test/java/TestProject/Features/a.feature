Feature: User Login Authentication Test

  Scenario: Positive login test
    Given url "http://localhost:5000/api/login"
    And header Content-Type = "application/json"
    And request {"username":"abiral","password":"123"}
    When method post
    Then status 200
   * print ">>>> output >>>>", response
    And match response ==
    """
    {
    "token" : '#string'
    }
    """
  Scenario: Negative login test
    Given url "http://localhost:5000/api/login"
    And header Content-Type = "application/json"
    And request {"username":"","password":"123"}
    When method post
    Then status 400
    * print ">>>> output >>>>", response
    And match response ==
    """
    {
    "error" : '#string'
    }
    """
