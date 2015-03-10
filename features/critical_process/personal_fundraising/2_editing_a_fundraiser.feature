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
#    And I click in the Main Page text area after the word fundraiser
#    And I press Enter on the keyboard
#    And I add 'Thank you for supporting our cause!' in the Main Page text on the existing Fundraiser page
#    And highlight the text "Thank you for supporting our cause!"
#    And I remove Bold
#    And set it to Align Left
#    And I click Save and Finish
#    Then I should be able to click on the QA Fundraiser [X] url to view the live page with the updates I made

#  Scenario: disabling a Fundraiser
#    Given I am logged into eTap
#    When I click Management on the main menu
#    And click Fundraisers
#    And click to edit the fundraiser named QA Fundraiser [X]
#    And I set the Status to Disabled
#    And click Save and Finish
#    And click on the QA Fundraiser [X] url
#    Then I should see The File Could Not Be Found