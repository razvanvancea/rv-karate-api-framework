Feature: Get post

  Background:
  * url 'https://jsonplaceholder.typicode.com'

  Scenario: GET post
    * def postId = 1
    Given path '/posts', postId
    When method get
    Then status 200
