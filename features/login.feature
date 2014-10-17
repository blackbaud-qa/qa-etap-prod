Feature: eTap Login and Logout

Scenario: Normal Login and Logout
  Given I navigate to Fullhouse
  When I login into eTap
  And I am logged into eTap
  And I log out of eTap
  Then I should be logged out of eTap

