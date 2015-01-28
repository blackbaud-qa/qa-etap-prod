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
    And I set the Site Name to 'qafundraiser1' on the new Fundraiser page
    And I set Administrative Contact Name to 'QA Team' on the new Fundraiser page
    And I set Administrative Contact Email to 'qa-1@blackbaud.com' on the new Fundraiser page
    And I set the template to Float on the new Fundraiser page
    And I click Next on the new Fundraiser page
    And I highlight the Main page Text on the new Fundraiser page
    And I delete the Main Page Text on the new Fundraiser page
    And I set the Main Page Text to say 'Welcome to QAs wonderful fundraiser' on the new Fundraiser page
#    And highlight the Main Page Text
#    And set it to be Bold
#    And set it to be Centered
    And I click Next on the new Fundraiser page
#    And set the Recommended Team Goal to '500'
#    And set the Recommended Individual Goal to '100'
#    And set Field Name to Base: Gender
#    And mark the checkbox next to Required
#    And set the Display Text to Gender
#    And click Add
#    And set Name to Walker
#    And set Amount to 15
#    And set Fund to General
#    And click Add
#    And set Name to Runner
#    And set Amount to 25
#    And set Fund to General
#    And click Add
#    And I click Next on the new Fundraiser page
#    And I click Next on the new Fundraiser page
#    And I click Next on the new Fundraiser page
#    And I click Next on the new Fundraiser page
#    And set Fund to be applied to Donations to General
#    And click Save and Finish
#    Then I should be able to click on the QA Fundraiser [X] url to view the live page
