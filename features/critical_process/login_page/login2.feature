Feature: Login
  As a user
  I want to login to my database
  In order to utilize eTapestry

  Background:
    Given I am logged into eTap
    And I create [NEW_USER]
    And log out

  Scenario: Login with valid username and password
    When I login as [NEW_USER]
    Then I should be logged in
    And I should see my Home page

  Scenario: Login with no username and password
    When I login as [NEW USER] with values
      | username | password |
      |          |          |
    Then I should see the error: Please enter your login id. Please enter your password.

  Scenario: Login with no password
    When I login as [NEW_USER] with values
      | username | password |
      | NEW_USER |          |
    Then I should see the error: Please enter your password

  Scenario: Login with no username
    When I login as [NEW_USER] with values
      | username | password         |
      |          | correct_password |
    Then I should see the error: Please enter your login id

  Scenario: Login with invalid username
    When I login as [NEW_USER] with values
      | username                | password         |
      | username_does_not_exist | correct_password |
    Then I should see the error: Invalid login id or password

  Scenario: Login with invalid password
    When I login as [NEW_USER] with values
      | username | password     |
      | NEW_USER | bad_password |
    Then I should see the error: Invalid login id or password

  Scenario: Should not allow multiple logins at the same time
    Given [NEW_USER] is already logged in
    When I login with values
      | username | password         |
      | NEW_USER | correct_password |
    Then I should see the error: That login id is already logged in.

  Scenario: Should be able to force a login when multiple sessions detected
    Given I see the error: That login id is already logged in
    When I enter the values
      | username | password         |
      | NEW_USER | correct_password |
    And click Yes
    Then I should be logged in
    And the previous session should end