Feature: Creating a new communications template

  Background:
    Given a query category should exist called 'Donation Queries'
    And a query 'All Donations Made Last Year' has been created in the 'Donation Queries' category

  Scenario: creating a simple business letter in advanced editor mode
    Given I am logged into eTap
    And There exists an account that has donated this year
    And 'Simple Business Letter - Advanced Editor Mode' does not exist
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Thank You Letters on the Correspondence Categories page
    And click New Email or Document Template on the Correspondence Category page
    And set the Name to 'Simple Business Letter - Advanced Editor Mode' on the new Correspondence Template page
    And press Tab on the keyboard
    And verify that the Subject now says 'Simple Business Letter - Advanced Editor Mode'
    And I click Next on the new Correspondence Template page
    And click Documents on the new Correspondence Template page
    And click on the Simple Business Letter template
    And click Advanced Mode
 #   And click Advanced Editor Mode
    And click the icon to open the Insert Edit image pop up
    And upload an image on my computer
    And select all the text in the template
    And update the letter's email address from 'johndoe@abcorganization.com' to 'lance.moore@blackbaud.com'
    And set font to Comic Sans
    And set the font size to 12pt
    And click Save And Create Document
    And set the Category to Base
    And I set the template query to 'All Donations Made Last Year - JE'
    And click Next on the Generate Letters page
    And set the document type to Word
  #  And name the file 'AdvLetter'
    And set the Grouping to One Document Per Journal Entry
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    # TODO: figure out how to get data out of a .docx file. Tried both docx and yomu. WIP.
#    Then the Word document should contain as many pages as there are new journal entries
 #   Then the Word document should generate
#    And when you open the file it should contain X pages
#    And the document should display properly with your changes

  Scenario: creating a Receipt with Stub in advanced editor mode
    Given I am logged into eTap
    #And There exists an account that has donated this year
    And 'Receipt w/ Stub (Bottom) - Advanced Editor Mode' does not exist
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Receipts on the Correspondence Categories page
    And click New Email or Document Template on the Correspondence Category page
    And set the Name to 'Receipt w/ Stub (Bottom) - Advanced Editor Mode'
    And press Tab on the keyboard
    And verify that the Subject now says 'Receipt w/ Stub (Bottom) - Advanced Editor Mode'
    And I click Next on the new Correspondence Template page
    And click Documents on the new Correspondence Template page
    And click on the Receipt w/ Stub (Bottom) template
    And delete the letter footer
    And select Receipt Stub Copy from the Add Block list
    #TODO: Figure out how to do a generic drag n drop on TinyMCE!
    #And move the Receipt Stub Copy block above the Receipt Stub block
    And click Advanced Mode
    And double click on the Long Salutation merge tag
    And set the Field to Short Salutation
    And click Insert on the merge tags popup
    And select all the text in the template
    And set the font to Times New Roman
    And set the font size to 12pt
    And click Save And Create Document
    And set the Category to Base
    And I set the template query to 'All Donations Made Last Year - JE'
    And click Next on the Generate Letters page
    And set the document type to PDF
    And set the Grouping to One Document Per Journal Entry
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    Then the PDF document should contain as many pages as there are new journal entries
#    Then the PDF document should generate
#    And when you open the file it should contain X pages
#    And the document should display properly with your changes
#    And fields should be aligned properly
