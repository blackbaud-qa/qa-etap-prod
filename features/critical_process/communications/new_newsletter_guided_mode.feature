Feature: Creating a new communications template

  Scenario: creating a new newsletter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click New Email or Document Template
    And set the Name to Newsletter Template
    And click Tab
    And verify that the Subject now says Newsletter Template
    And click Next
    And click Documents
    And click on the Letter w/Gift List template
    And click on the image to open the Edit Contents pop up
    And double click the image to open the Insert/edit image pop up
    And click the browse icon
    And click Browse
    And select an image from my computer
    And click Upload
    And click the uploaded image
    And click Ok
    And click Update

