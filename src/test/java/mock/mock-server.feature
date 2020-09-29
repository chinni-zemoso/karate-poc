Feature: stateful mock server
# STANDALONE WORKING SETUP
  Background:
    * def curId = 0
    * def nextId = function(){ return ~~curId++ }
    * def cats = {}

  Scenario: pathMatches('/greeting') && paramValue('name') != null
    * def content = 'Hello ' + paramValue('name') + '!'
    * def response = { id: '#(nextId())', content: '#(content)' }

