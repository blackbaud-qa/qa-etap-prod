@crit_proc_no_ff
Feature: Previewing communications templates

  Scenario: generate Word documents and add journal contacts
    Given I am logged into eTap
#    And I delete the existing Document.docx
    And I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I create a custom account query has been created for 'Talisha Almond'
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Email Templates
    And I click 'Create Documents' under 'Lapsed Donor Contact' on the email templates page
    And set the Category to Custom Account Queries
    And I set the template query to 'Talisha Almond - A'
    And click Next on the Generate Letters page
    And set the document type to Word
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
#    And set Receiving to Download documents
    And set Receiving to Place documents in My Drop Box
    And click Next on the Generate Letters page
    And I mark the checkbox next to Create a Journal Contact for Each Account
    And I set the Subject to 'Document Generated: Lapsed Donor Contact - Word' on the Generate Letters page
    And I set the Method to 'Letter' on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
#    Then The Word document should be generated
    Then a contact with the subject 'Document Generated: Lapsed Donor Contact - Word' should be added to 'Talisha Almond' journal page
    And I click on the Home drop down
    And I click on 'Open My Drop Box' on the home menu
    And I delete 'Document.docx' from the drop box
    And I click Yes on the Account Settings page
#    And I delete the existing Document.docx


  Scenario: generate PDF documents and add journal contacts
    Given I am logged into eTap
#    And I delete the existing Document.pdf
    And I type 'Martine Stallworth' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Martine Stallworth' in the search results
    And I create a custom account query has been created for 'Martine Stallworth'
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Email Templates
    And I click 'Create Documents' under 'Lapsed Donor Contact' on the email templates page
    And set the Category to Custom Account Queries
    And I set the template query to 'Martine Stallworth - A'
    And click Next on the Generate Letters page
    And set the document type to PDF
    And click Next on the Generate Letters page
    And click Next on the Generate Letters page
#    And set Receiving to Download documents
    And set Receiving to Place documents in My Drop Box
    And click Next on the Generate Letters page
    And I mark the checkbox next to Create a Journal Contact for Each Account
    And I set the Subject to 'Document Generated: Lapsed Donor Contact - PDF' on the Generate Letters page
    And I set the Method to 'Letter' on the Generate Letters page
    And click Next on the Generate Letters page
    And click Run
#    Then The PDF document should be generated
    Then a contact with the subject 'Document Generated: Lapsed Donor Contact - PDF' should be added to 'Martine Stallworth' journal page
    And I click on the Home drop down
    And I click on 'Open My Drop Box' on the home menu
    And I delete 'Document.pdf' from the drop box
    And I click Yes on the Account Settings page
#    And I delete the existing Document.pdf


  Scenario: send basic mass email, send advanced mass email, and add journal contacts
    Given I am logged into eTap
    And I type 'Gregory Dumont' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Gregory Dumont' in the search results
    And I click on 'Personas' in the account header
    And I set Email to 'lance.moore@blackbaud.com' on the classic add account page
    And I click Save And 'Edit'
    And I click on 'Home' in the account header
    And I create a custom account query has been created for 'Gregory Dumont'
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Email Templates
    And I click 'Mass Email' under 'Lapsed Donor Contact' on the email templates page
    And I Click here to make the necessary edits to your template
    And I click Save And Mass Email on the Correspondence Template
    And I select Basic Mass Email on the Mass Email page
    And I click Send a Mass Email on the Mass Email page
    And set the Category to Custom Account Queries
    And I set the template query to 'Gregory Dumont - A'
    And I click Next on the Mass Email page
    And I set the Name to 'eTapestry QA' on the Mass Email page
    And I set both Email fields to 'lance.moore@blackbaud.com' on the Mass Email page
    And I click Next on the Mass Email page
    And I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page
    And I set the Subject to 'We Miss You! - Basic Mass Email' on the Mass Email page
    And I set the Method to 'Email' on the Mass Email page
    And I click Next on the Mass Email page
    And I click Send on the Mass Email page
    When I click Communications on the main menu
    And I click on Manage Communications on the communications menu
    And click Email Templates
    And I click 'Mass Email' under 'Lapsed Donor Contact' on the email templates page
    And I select Advanced Mass Email on the Mass Email page
    And I click Send a Mass Email on the Mass Email page
    And set the Category to Custom Account Queries
    And I set the template query to 'Gregory Dumont - A'
    And I click Next on the Mass Email page
    And I set the Name to 'eTapestry QA' on the Mass Email page
    And I set both Email fields to 'lance.moore@blackbaud.com' on the Mass Email page
    And I click Next on the Mass Email page
    And I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page
    And I set the Subject to 'We Miss You! - Advanced Mass Email' on the Mass Email page
    And I set the Method to 'Email' on the Mass Email page
    And I click Next on the Mass Email page
    And I click Send on the Mass Email page
#    Then the email should send successfully to lance.moore@blackbaud.com
    Then a contact with the subject 'We Miss You! - Basic Mass Email' should be added to 'Gregory Dumont' journal page
    And a contact with the subject 'We Miss You! - Advanced Mass Email' should be added to 'Gregory Dumont' journal page


## Added this last scenario to the one above to streamline this test, since we're really just confirming that contacts are being created ##

#  Scenario: send advanced mass email and add journal contacts
#    Given I am logged into eTap
#    When I click Communications on the main menu
#    And click Email Templates
#    And I click 'Mass Email' under 'Lapsed Donor Contact' on the email templates page
#    And I select Advanced Mass Email on the Mass Email page
#    And I click Send a Mass Email on the Mass Email page
#    And set the Category to Custom Account Queries
#    And I set the template query to 'Talisha Almond - A'
#    And I click Next on the Mass Email page
#    And I set the Name to 'eTapestry QA' on the Mass Email page
#    And I set both Email fields to 'lance.moore@blackbaud.com' on the Mass Email page
#    And I click Next on the Mass Email page
#    And I mark the checkbox next to Create a Journal Contact for All Recipients on the Mass Email page
#    And I set the Subject to 'We Miss You! - Advanced Mass Email' on the Mass Email page
#    And I set the Method to 'Email' on the Mass Email page
#    And I click Next on the Mass Email page
#    And I click Send on the Mass Email page
##    Then the email should send successfully to lance.moore@blackbaud.com
#    Then a contact dated for today with the subject 'We Miss You! - Advanced Mass Email' should be added to 'Talisha Almond' journal page

