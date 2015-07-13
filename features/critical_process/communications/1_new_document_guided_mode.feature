@crit_proc
Feature: Creating a new communications template

  Background:
    Given a query category has been created called 'Donation Queries'
    And a query 'All Donations Made Last Year' has been created in the 'Donation Queries' category
#
#
#  Scenario: creating a simple business letter in guided mode
#    Given I am logged into eTap
#    And I click Communications on the main menu
#    And I click Thank You Letters on the Correspondence Categories page
#    And I rename the existing letter to prevent automation errors
##    And I click New Email or Document Template on the Thank You Letters page
#    And I click New Email or Document Template on the Correspondence Category page
#    And I set the Name to 'Simple Business Letter - Guided Mode' on the new Correspondence Template page
#    And I press Tab on the keyboard
##    And verify that the Subject now says Simple Business Letter - Guided Mode
#    And I click Next on the new Correspondence Template page
#    And I click Documents on the new Correspondence Template page
#    And I click on the Simple Business Letter template
#    And I click on the image to open the Edit Contents pop up
#    And I double click the image to open the insert image pop up
#    And I click the browse icon on the insert image pop up on the new Correspondence Template page
#    And I select a file under browse in resources browser
##    And click Browse
##    And select an image from my computer
#    And I click Upload in resources browser
#    And I click the uploaded image in resources browser
#    And I click Ok in resources browser
#    And I click Update on the Edit Contents pop up
#    And I click Quick Formatting on the new Correspondence Template page
#    And I set the font to Comic Sans on the Edit Contents pop up
#    And I set the size to 12pt on the Edit Contents pop up
#    And I click Update on the Edit Contents pop up
#    And I click on the Letter Closing block to open the Edit Contents pop up
#    And I change the email address to 'qa-1@blackbaud.com' in the Edit Contents pop up
#    And I click Update on the Edit Contents pop up
#    And I choose Create Document on Save And Create Document on the new Correspondence Template page
#    And I click Next on the new Correspondence Template page
##    And I click Save And Create Document on the new Correspondence Template page
#    And I set the Category to Donation Queries
#    And I set the template query to 'All Donations Made Last Year'
#    And I click Next on the Generate Letters page
#    And I set the document type to PDF on the Generate Letters page
#    And I set the Grouping to One Document Per Journal Entry on the Generate Letters page
#    And I click Next on the Generate Letters page
#    And I click Next on the Generate Letters page
#    And I set Receiving to Download documents on the Generate Letters page
#    And I click Next on the Generate Letters page
#    And I click Next on the Generate Letters page
##    taking out this step until we know where to save the document and such
##    And I click Run on the Generate Letters page
##  Not sure if we have a good way of testing the PDF for the changes
##    Then the PDF document should generate
##    And when you open the file it should contain X pages
##    And the document should display properly with your changes
###

  Scenario: Creating a Receipt with Stub in guided mode
    Given I am logged into eTap
    And 'Receipt w/ Stub (Bottom) - Guided Mode' does not exist
    When I click Communications on the main menu
    And click Receipts on the Correspondence Categories page
    And click New Email or Document Template on the Correspondence Category page
    And set the Name to 'Receipt w/ Stub (Bottom) - Guided Mode' on the new Correspondence Template page
    And I press Tab on the keyboard
    And click Next on the new Correspondence Template page
    And I click Documents on the new Correspondence Template page
    And I click on the Receipt w/ Stub (Bottom) template on the new Correspondence Template page
    And I hover over the Letter Closing block on the new Correspondence Template page
    And I click the red X to delete the block on the new Correspondence Template page
    And I select Receipt Stub Copy from the Add Block list
    And I click on the Body block to open the Edit Contents pop up
    And I double click on the Long Salutation merge tag
    And I set the Field to Short Salutation
    And I click Insert on the merge tags popup
    And I select all the text in the Body
    And I set the font to Times New Roman
    And I set the font size to 12pt
    And I click Update on the editor pop up
    And I click Save And Create Document
    And I set the Category to Donation Queries
    And I set the template query to All Donations Made Last Year - JE
    And I click Next on the receipt template page
    And I set the document type to Word on the receipt template page
    And I set the Grouping to One Document Per Journal Entry on the receipt template page
    And I click Next on the receipt template page
    And I click Next on the receipt template page
#    And set Receiving to Download documents
    And I click Next on the receipt template page
    And I click Next on the receipt template page
#  Don't currently have a way of checking the final document, so will leave it here for now
#    And click Run
#    Then the Word document should generate
#    And when you open the file it should contain X pages
#    And the document should display properly with your changes
#    And fields should be aligned properly
