Feature: Add User
  As an admin
  I need to be able to create additional users
  that can log in to eTapestry


  Scenario: Create new user
    Given I am logged into eTap
    And User 'testUser' does not exist
    And I create user 'testUser'
    And I login into eTap with values 'testUser', 'Password!'
    Then I should be logged in
