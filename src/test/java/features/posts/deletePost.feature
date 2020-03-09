Feature: Delete post

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Delete post
    * def postId = 1
    Given path '/posts', postId
    When method delete
    Then status 200
