Feature: eTap Login and Logout

Scenario: Normal Login and Logout
  Given I navigate to Fullhouse
  And I login into eTap
  #And I am logged into eTap
  When I log out of eTap
  Then I should be logged out of eTap

