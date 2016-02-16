@crit_proc_no_ff
Feature: Editing a communications template

#  Background:
#    Given a query category has been created called Donation Queries
#    And a query for all Donations Made Last Year has been created in the Donation Queries category
#    And a template named Simple Business Letter - Guided Mode has already been created in the Thank You Letters category
#    And a template named Simple Business Letter - Advanced Editor Mode has already been created in the Thank You Letters category
#
  Scenario: adding a widget to a simple business letter in guided mode
    Given I am logged into eTap
    And I delete the existing Document.docx
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Guided Mode Static' letter template
    And I click on the Body block to open the Edit Contents pop up in the standard editor
    #    And place the cursor between the second and third paragraph
    And I delete all of the text in the Edit Contents pop up
    And I click Insert Letter Widget in the Edit Contents pop up
    And I select the Entry List widget
    And I click insert on the Letter Widgets pop up
    And I double click the Entry List widget to edit it in the Edit Contents pop up
    And I click Add Another Column on the Letter Widgets pop up
    And I set the category to 'Journal Fields' on the Letter Widgets pop up
    And I set the field to 'Gift Type' on the Letter Widgets pop up
    And I click insert on the Letter Widgets pop up
    And I click Update on the Edit Contents pop up
    And click Save And Create Document
    And set the Category to Donation Queries
    And I set the template query to 'Donations Made Last Year - JE'
    And click Next on the Generate Letters page
    And set the document type to Word
    And I set Grouping to One Document Per Account
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    Then The Word document should be generated
    And I delete the existing Document.docx
#    And when you open the file it should contain X pages
#    And the document should display properly with your changes including the Entry List Widget

  Scenario: adding a widget to a simple business letter in advanced editor mode
    Given I am logged into eTap
    And I delete the existing Document.pdf
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Advanced Editor Mode Static' letter template
    And I delete all the text in the advanced editor on the template page
#    And place the cursor between the second and third paragraph
    And I click Insert Letter Widget in the advanced editor on the template page
    And I select the Entry List widget
    And I click insert on the Letter Widgets pop up
    And I double click the Entry List widget to edit it in the advanced editor
    And I click Add Another Column on the Letter Widgets pop up
    And I set the category to 'Journal Fields' on the Letter Widgets pop up
    And I set the field to 'Gift Type' on the Letter Widgets pop up
    And I click insert on the Letter Widgets pop up
    And click Save And Create Document
    And set the Category to Donation Queries
    And I set the template query to 'Donations Made Last Year - JE'
    And click Next on the Generate Letters page
    And set the document type to PDF
    And I set Grouping to One Document Per Account
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    Then The PDF document should be generated
#    And when you open the file it should contain X pages
#    And the document should display properly with your changes including the Entry List Widget
    And I delete the existing Document.pdf





