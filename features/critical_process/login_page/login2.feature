@crit_proc
Feature: Login
  As a user
  I want to login to my database
  In order to utilize eTapestry

  Background:
    Given I am logged into eTap
    And there exists user 'testUser6'
    And I log out of eTap

  Scenario: Login with valid username and password
    When I login into eTap with values 'testUser6', 'Password!'
    Then I should be logged in
    And I should see my Home page

  Scenario: Login with no username and password
    When I login into eTap with values
      | username | password |
      |          |          |
    Then I should see: 'Please enter your login ID' and 'Please enter your password'

  Scenario: Login with no password
    When I login into eTap with values
      | username | password |
      | testUser6 |          |
    Then I should see: 'Please enter your password'

  Scenario: Login with no username
    When I login into eTap with values
      | username | password         |
      |          | Password! |
    Then I should see: 'Please enter your login ID'

  Scenario: Login with invalid username
    When I login into eTap with values
      | username                | password  |
      | username_does_not_exist | Password! |
    Then I should see: 'The login ID and/or password is not valid. Please check the spelling and try again.'

  Scenario: Login with invalid password
    When I login into eTap with values
      | username | password     |
      | testUser6 | bad_password |
    Then I should see: 'The login ID and/or password is not valid. Please check the spelling and try again.'

  Scenario: Should not allow multiple logins at the same time
    Given I login into eTap with values 'testUser6', 'Password!'
    When I login into eTap a second time with values
      | username | password  |
      | testUser6 | Password! |
    Then I should see: 'This login ID is already in use.'

  Scenario: Should be able to force a login when multiple sessions detected
    Given I see the error 'This login ID is already in use.'
    When I submit the values
      | username | password  |
      | testUser6 | Password! |
    Then I should be logged in