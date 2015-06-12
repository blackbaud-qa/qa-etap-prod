@crit_proc 
Feature: Disabling a fundraiser

  Background:
  #  Given I have a processor set up in my database
 #   And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: disabling a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page
    And I set the status to Disabled on the new Fundraiser page
    And I click Save and Finish on the new Fundraiser page
    And I sort by Status on the Fundraisers Page
#   And click on the QA Fundraiser [X] url
#    Then I should see The File Could Not Be Found