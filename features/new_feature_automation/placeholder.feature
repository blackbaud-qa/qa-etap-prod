@sprint

#  Adding this in just to serve as a placeholder for the sprintwork job if all other features have been moved out
#  This will allow us to still keep the job running, even if we're between features here.
Feature: eTap Login and Logout

  Scenario: Normal Login and Logout
    Given I login into eTap for CP1
    When I log out of eTap
    Then I should be logged out of eTap