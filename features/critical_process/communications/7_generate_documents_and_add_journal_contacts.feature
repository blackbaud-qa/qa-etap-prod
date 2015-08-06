@crit_proc
Feature: Previewing communications templates

##  Background:
##    Given a custom account query has been created for Talisha Almond
##    And the email address on this account's primary person is set to qa-1@blackbaud.com
##    And a template named Lapsed Donor Contact has already been created in the Email Templates category

  Scenario: generate Word documents and add journal contacts
    Given I am logged into eTap
    And I delete the existing Document.docx
    When I click Communications on the main menu
    And click Email Templates
    And I click 'Create Documents' under 'Lapsed Donor Contact' on the email templates page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And click Next on the Generate Letters page
    And set the document type to Word
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And I mark the checkbox next to Create a Journal Contact for Each Account
    And I set the Subject to 'Document Generated: Lapsed Donor Contact - Word' on the Generate Letters page
    And I set the Method to 'Letter' on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    Then The Word document should be generated
    And a contact dated for today with the subject 'Document Generated: Lapsed Donor Contact - Word' should be added to 'Talisha Almond' journal page
    And I delete the existing Document.docx

  Scenario: generate PDF documents and add journal contacts
    Given I am logged into eTap
    And I delete the existing Document.pdf
    When I click Communications on the main menu
    And click Email Templates
    And I click 'Create Documents' under 'Lapsed Donor Contact' on the email templates page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And click Next on the Generate Letters page
    And set the document type to PDF
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
    And set Receiving to Download documents
    And click Next on the Generate Letters page
    And I mark the checkbox next to Create a Journal Contact for Each Account
    And I set the Subject to 'Document Generated: Lapsed Donor Contact - PDF' on the Generate Letters page
    And I set the Method to 'Letter' on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
    Then The PDF document should be generated
    And a contact dated for today with the subject 'Document Generated: Lapsed Donor Contact - PDF' should be added to 'Talisha Almond' journal page
    And I delete the existing Document.pdf

  Scenario: send basic mass email and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And I click 'Mass Email' under 'Lapsed Donor Contact' on the email templates page
    And I select Basic Mass Email on the Mass Email page
    And I click Send a Mass Email on the Mass Email page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And I click Next on the Mass Email page
    And I set the Name to 'eTapestry QA' on the Mass Email page
    And I set both Email fields to 'qa-1@blackbaud.com' on the Mass Email page
    And I click Next on the Mass Email page
    And I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page
    And I set the Subject to 'We Miss You! - Basic Mass Email' on the Mass Email page
    And I set the Method to 'Email' on the Mass Email page
    And I click Next on the Mass Email page
    And I click Send on the Mass Email page
#    Then the email should send successfully to qa-1@blackbaud.com
    Then a contact dated for today with the subject 'We Miss You! - Basic Mass Email' should be added to 'Talisha Almond' journal page

  Scenario: send advanced mass email and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And I click 'Mass Email' under 'Lapsed Donor Contact' on the email templates page
    And I select Advanced Mass Email on the Mass Email page
    And I click Send a Mass Email on the Mass Email page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And I click Next on the Mass Email page
    And I set the Name to 'eTapestry QA' on the Mass Email page
    And I set both Email fields to 'qa-1@blackbaud.com' on the Mass Email page
    And I click Next on the Mass Email page
    And I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page
    And I set the Subject to 'We Miss You! - Advanced Mass Email' on the Mass Email page
    And I set the Method to 'Email' on the Mass Email page
    And I click Next on the Mass Email page
    And I click Send on the Mass Email page
#    Then the email should send successfully to qa-1@blackbaud.com
    Then a contact dated for today with the subject 'We Miss You! - Advanced Mass Email' should be added to 'Talisha Almond' journal page

