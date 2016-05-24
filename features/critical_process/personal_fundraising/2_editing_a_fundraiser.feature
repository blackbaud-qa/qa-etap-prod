@crit_proc6
Feature: Editing a fundraiser

  Background:
    Given I login into eTap for CP6

  Scenario: editing a Fundraiser
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
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
    And I sort by Status on the Fundraisers Page
    Then I click on the QA Fundraiser 1 url on the Fundraiser page
    And I should be able to see the changed text 'Welcome to QAs wonderful fundraiser! Thank you for supporting our cause!'
