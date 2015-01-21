Feature: Creating a new fundraiser

  Background:
    Given I have a processor set up in my database

  Scenario: setting up a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And click New Fundraiser
    And set the date to Today
    And set Name to QA Fundraiser [X]
    And set Status to Active
    And set the Goal to $5000
    And I click Next
    And set the Site Name to qafundraiser[X]
    And set Administrative Contact Name to QA Team
    And Administrative Contact Email to qa-1@blackbaud.com
    And Set the template to Float
    And I click Next
    And change the Main Page Text to say "Welcome to QA's wonderful fundraiser!"
    And highlight the Main Page Text
    And set it to be Bold
    And set it to be Centered
    And click Next
    And set the Recommended Team Goal to 500
    And set the Recommended Individual Goal to 100
    And set Field Name to Base: Gender
    And mark the checkbox next to Required
    And set the Display Text to Gender
    And click Add
    And set Name to Walker
    And set Amount to 15
    And set Fund to General
    And click Add
    And set Name to Runner
    And set Amount to 25
    And set Fund to General
    And click Add
    And click Next
    And click Next
    And click Next
    And click Next
    And set Fund to be applied to Donations to General
    And click Save and Finish
    Then I should be able to click on the QA Fundraiser [X] url to view the live page


