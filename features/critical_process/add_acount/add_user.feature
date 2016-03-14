Feature: Add User
  As an admin
  I need to be able to create additional users
  that can log in to eTapestry


  Scenario: Create new user
    Given I am logged into eTap
    And I create user 'new_user'
    And I log out of eTap
    And I login into eTap with values 'new_user', 'Password!'
    Then I should be logged in
