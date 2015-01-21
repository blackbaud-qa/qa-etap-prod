Feature: Disabling a fundraiser

  Background:
    Given I have a processor set up in my database
    And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: disabling a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And click to edit the fundraiser named QA Fundraiser [X]
    And I set the Status to Disabled
    And click Save and Finish
    And click on the QA Fundraiser [X] url
    Then I should see The File Could Not Be Found