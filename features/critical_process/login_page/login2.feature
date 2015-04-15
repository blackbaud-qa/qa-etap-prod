Feature: Login
  As a user
  I want to login to my database
  In order to utilize eTapestry

  Background:
    Given I am logged into eTap
    And there exists user 'testUser'
    And I log out of eTap

  Scenario: Login with valid username and password
    When I login into eTap with values 'testUser', 'Password!'
    Then I should be logged in
    And I should see my Home page

  Scenario: Login with no username and password
    When I login into eTap with values
      | username | password |
      |          |          |
    Then I should see: 'Please enter your login id' and 'Please enter your password'

  Scenario: Login with no password
    When I login into eTap with values
      | username | password |
      | testUser |          |
    Then I should see: 'Please enter your password'

  Scenario: Login with no username
    When I login into eTap with values
      | username | password         |
      |          | Password! |
    Then I should see: 'Please enter your login id'

  Scenario: Login with invalid username
    When I login into eTap with values
      | username                | password  |
      | username_does_not_exist | Password! |
    Then I should see: 'Invalid login id or password'

  Scenario: Login with invalid password
    When I login into eTap with values
      | username | password     |
      | testUser | bad_password |
    Then I should see: 'Invalid login id or password'

  Scenario: Should not allow multiple logins at the same time
    Given I login into eTap with values 'testUser', 'Password!'
    When I login into eTap a second time with values
      | username | password  |
      | testUser | Password! |
    Then I should see: 'That login id is already logged in.'

  Scenario: Should be able to force a login when multiple sessions detected
    Given I see the error 'That login id is already logged in.'
    When I submit the values
      | username | password  |
      | testUser | Password! |
    Then I should be logged in