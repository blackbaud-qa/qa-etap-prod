#@crit_proc12
  @crit_proc3
Feature: eTap Login and Logout

Scenario: Normal Login and Logout
  Given I login into eTap for CP3
  When I log out of eTap
  Then I should be logged out of eTap

  #making a change to this file

