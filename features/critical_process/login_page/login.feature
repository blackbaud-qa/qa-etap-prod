@crit_proc12
Feature: eTap Login and Logout

Scenario: Normal Login and Logout
  Given I login into eTap for CP12
  When I log out of eTap
  Then I should be logged out of eTap

  #making a change to this file

