@ready
Feature: Creating a new fundraiser

  Background:
#    Given I have a processor set up in my database

  Scenario: setting up a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I click New Fundraiser on the Fundraisers menu
    And I set the date to Today on the new Fundraiser page
    And I set Name to 'QA Fundraiser 1' on the new Fundraiser page
    And I set Status to Active on the new Fundraiser page
    And I set the Goal to '$5000' on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I set the Site Name on the new Fundraiser page
    And I set Administrative Contact Name to 'QA Team' on the new Fundraiser page
    And I set Administrative Contact Email to 'qa-1@blackbaud.com' on the new Fundraiser page
    And I set the template to Float on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I highlight the Main page Text on the new Fundraiser page
    And I delete the Main Page Text on the new Fundraiser page
    And I set the Main Page Text to say 'Welcome to QAs wonderful fundraiser' on the new Fundraiser page
    And I highlight the Main page Text on the new Fundraiser page
    And I choose B for Bold in the Main page Text box on the new Fundraiser page
    And I click Align Center in the Main page Text box on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I set the Recommended Team Goal to '$500' on the new Fundraiser page
    And I set the Recommended Individual Goal to '$100' on the new Fundraiser page
    And I choose Base:Gender in the Field Name under Add Question on the new Fundraiser page
    And I set the checkbox next to Required on the new Fundraiser page
    And I set the display text to say 'Gender' on the new Fundraiser page
    And I click Add on the new Fundraiser page
    And I set the Fee Name to 'Walker' on the new Fundraiser page
    And I set the Fee Amount to '15' on the new Fundraiser page
    And I choose General in the Fund drop down under Add Fee on the new Fundraiser page
    And I click Add under Registration Fee Levels on the new Fundraiser page
    And I set the second Fee Name to 'Runner' on the new Fundraiser page
    And I set the second Fee Amount to '25' on the new Fundraiser page
    And I choose General as the second Fund in the Fund drop down on the new Fundraiser page
    And I click Add under Registration Fee Levels on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I choose General as the Fund to be applied to Donations on the new Fundraiser page
    And I click Save and Finish on the new Fundraiser page
#   Then I should be able to click on the QA Fundraiser 1 url on the Fundraiser page
#    And the QA Fundraiser url should load in a new browser window
