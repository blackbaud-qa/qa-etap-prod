Feature: Editing a fundraiser

  Background:
#    Given I have a processor set up in my database
#    And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: editing a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page
    And I click Next on the new Fundraiser page
    And I change the template to Chisel on the existing Fundraiser page
    And I click Next on the new Fundraiser page
    And I highlight the Main page Text on the new Fundraiser page
    And I delete the Main Page Text on the new Fundraiser page
    And I set the Main Page Text to say 'Welcome to QAs wonderful fundraiser! Thank you for supporting our cause!' on the new Fundraiser page
    And I highlight the Main page Text on the new Fundraiser page
    And I choose B for Bold in the Main page Text box on the new Fundraiser page
    And I click Align Left in the Main page Text box on the new Fundraiser page
    And I click Save and Finish on the new Fundraiser page
#    Then I should be able to click on the QA Fundraiser [X] url to view the live page with the updates I made

  Scenario: disabling a Fundraiser
   Given I am logged into eTap
   When I click Management on the main menu
   And I click Fundraisers on the Management menu
   And I click on the Fundraiser titled QA Fundraiser 1 on the Fundraisers page
   And I set the status to Disabled on the new Fundraiser page
   And I click Save and Finish on the new Fundraiser page
#   And click on the QA Fundraiser [X] url
#    Then I should see The File Could Not Be Found