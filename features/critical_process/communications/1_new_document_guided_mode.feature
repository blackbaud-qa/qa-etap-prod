Feature: Creating a new communications template

  Background:
    Given a query category has been created called Donation Queries
    And a query for all Donations Made Last Year has been created in the Donation Queries category

  Scenario: creating a simple business letter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters
    And click New Email or Document Template
    And set the Name to Simple Business Letter - Guided Mode
    And click Tab
    And verify that the Subject now says Simple Business Letter - Guided Mode
    And click Next
    And click Documents
    And click on the Simple Business Letter template
    And click on the image to open the Edit Contents pop up
    And double click the image to open the Insert/edit image pop up
    And click the browse icon
    And click Browse
    And select an image from my computer
    And click Upload
    And click the uploaded image
    And click Ok
    And click Update
    And click Quick Formatting
    And set the font to Comic Sans
    And set the size to 12pt
    And click Update
    And click on the Letter Closing block to open the Edit Contents pop up
    And change the email address to qa-1@blackbaud.com
    And click Update
    And click Save And Create Document
    And set the Category to Donation Queries
    And set the query to Donations Made Last Year
    And click Next
    And set the document type to PDF
    And set the Grouping to One Document Per Journal Entry
    And click Next
    And click Next
    And set Receiving to Download documents
    And click Next
    And click Next
    And click Run
    Then the PDF document should generate
    And when you open the file it should contain X pages
    And the document should display properly with your changes

  Scenario: creating a Receipt with Stub in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Receipts
    And click New Email or Document Template
    And set the Name to Receipt w/ Stub (Bottom) - Guided Mode
    And click Tab
    And verify that the Subject now says Receipt w/ Stub (Bottom) - Guided Mode
    And click Next
    And click Documents
    And click on the Receipt w/ Stub (Bottom) template
    And hover over the Letter Closing block
    And click the red X to delete the block
    And select Receipt Stub Copy from the Add Block list
    And move the Receipt Stub Copy block above the Receipt Stub block
    And click on the Body block to open the Edit Contents pop up
    And double click on the Long Salutation merge tag
    And set the Field to Short Salutation
    And click Insert
    And select all the text in the Body
    And set the font to Times New Roman
    And set the size to 12pt
    And click Update
    And click Save And Create Document
    And set the Category to Donation Queries
    And set the query to Donations Made Last Year
    And click Next
    And set the document type to Word
    And set the Grouping to One Document Per Journal Entry
    And click Next
    And click Next
    And set Receiving to Download documents
    And click Next
    And click Next
    And click Run
    Then the Word document should generate
    And when you open the file it should contain X pages
    And the document should display properly with your changes
    And fields should be aligned properly

