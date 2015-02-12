Feature: Editing a fundraiser

  Background:
    Given I have a processor set up in my database
    And a Fundraiser set up in my database named QA Fundraiser [X]

  Scenario: editing a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And click to edit the fundraiser named QA Fundraiser [X]
    And I navigate to step 2 Site Options
    And I change the template to Chisel
    And I click Next
    And under Main Page Text I add "Thank you for supporting our cause!" below the title text
    And highlight the text "Thank you for supporting our cause!"
    And I remove Bold
    And set it to Align Left
    And I click Save and Finish
    Then I should be able to click on the QA Fundraiser [X] url to view the live page with the updates I made

  Scenario: disabling a Fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And click to edit the fundraiser named QA Fundraiser [X]
    And I set the Status to Disabled
    And click Save and Finish
    And click on the QA Fundraiser [X] url
    Then I should see The File Could Not Be Found