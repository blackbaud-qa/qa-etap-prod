Feature: Creating a new communications template

  Background:
    Given a query category has been created called Donation Queries
    And a query for all Donations Made Last Year has been created in the Donation Queries category

  Scenario: creating a simple business letter in advanced editor mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters
    And click New Email or Document Template
    And set the Name to Simple Business Letter - Advanced Editor Mode
    And click Tab
    And verify that the Subject now says Simple Business Letter - Advanced Editor Mode
    And click Next
    And click Documents
    And click on the Simple Business Letter template
    And click Advanced Modes
    And click Advanced Editor Mode
    And click Yes
    And double click the image to open the Insert/edit image pop up
    And click the browse icon
    And click Browse
    And select an image from my computer
    And click Upload
    And click the uploaded image
    And click Ok
    And select all the text in the template
    And set the font to Comic Sans
    And set the size to 12pt
    And highlight the email address at the bottom of the letter
    And change the email address to qa-1@blackbaud.com
    And click Save And Create Document
    And set the Category to Donation Queries
    And set the query to Donations Made Last Year
    And click Next
    And set the document type to PDF
    And change Grouping to One Document Per Account
    And click Next
    And click Next
    And set Receiving to Download documents
    And click Next
    And click Next
    And click Run
    Then the PDF document should generate
    And when you open the file it should contain X pages
    And the document should display properly with your changes

  Scenario: creating a Receipt with Stub in advanced editor mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Receipts
    And click New Email or Document Template
    And set the Name to Receipt w/ Stub (Bottom) - Advanced Editor Mode
    And click Tab
    And verify that the Subject now says Receipt w/ Stub (Bottom) - Advanced Editor Mode
    And click Next
    And click Documents
    And click on the Receipt w/ Stub (Bottom) template
    And hover over the Letter Closing
    And click the red X to delete the block
    And select Receipt Stub Copy from the Add Block list
    And move the Receipt Stub Copy above the Receipt Stub
    And click on the Body to open the Edit Contents pop up
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
    And change Grouping to One Document Per Account
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
