Feature: Get Posts

  Scenario: GET posts
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method get
    Then status 200
