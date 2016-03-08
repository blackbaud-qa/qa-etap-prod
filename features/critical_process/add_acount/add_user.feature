Feature: Add User
  As an admin
  I need to be able to create additional users
  that can log in to eTapestry


  Scenario: Create new user
    Given I am logged into eTap
    And User 'testUserGZ' does not exist
    And I create user 'testUserGZ'
    And I log out of eTap
    And I login into eTap with values 'testUserGZ', 'Password!'
    Then I should be logged in
