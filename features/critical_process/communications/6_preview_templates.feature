@crit_proc
Feature: Previewing communications templates

#  Background:
  #Creating static versions of these templates so we don't have to regenerate each time
#    Given a template named Simple Business Letter - Guided Mode has already been created in the Thank You Letters category
#    And a template named Simple Business Letter - Advanced Editor Mode has already been created in the Thank You Letters category
#    And a template named Pistachio Goodness - Guided Mode has already been created in the Email Templates category
#    And a template named Simplicity - Advanced Editor Mode has already been created in the Email Templates category

  Scenario: PDF preview - guided mode document
    Given I am logged into eTap
    And I delete the existing Document.pdf
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Guided Mode Static' letter template
    And I click PDF under the Preview menu on the letter template page
    Then The PDF document should be generated
    And I delete the existing Document.pdf
#    And when you open the file everything within the document should display properly
#
  Scenario: PDF preview - advanced editor mode document
    Given I am logged into eTap
    And I delete the existing Document.pdf
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Advanced Editor Mode Static' letter template
    And I click PDF under the Preview menu on the letter template page
    Then The PDF document should be generated
    And I delete the existing Document.pdf
#    And when you open the file everything within the document should display properly

  Scenario: Word preview - guided mode document
    Given I am logged into eTap
    And I delete the existing Document.docx
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Guided Mode Static' letter template
    And I click Word under the Preview menu on the letter template page
  Then The Word document should be generated
  And I delete the existing Document.docx
  #currently no way to parse word docs
#    And when you open the file everything within the document should display properly
##
  Scenario: Word preview - advanced editor mode document
    Given I am logged into eTap
    And I delete the existing Document.docx
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Advanced Editor Mode Static' letter template
    And I click Word under the Preview menu on the letter template page
    Then The Word document should be generated
    And I delete the existing Document.docx
#    And when you open the file everything within the document should display properly

  Scenario: Email preview - guided mode document
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Guided Mode Static' letter template
    And I click Email under the Preview menu on the letter template page
    And I enter the email address 'lance.moore@blackbaud.com'
    And I click Send on the letter template page
#    No way to confirm the email atm, we'll leave it at the send for now
#    Then the email should send successfully to lance.moore@blackbaud.com
#    And when you open the email everything within it should display properly
#
  Scenario: Email preview - advanced editor mode document
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters on the Correspondence Categories page
    And I click on the 'Simple Business Letter - Advanced Editor Mode Static' letter template
    And I click Email under the Preview menu on the letter template page
    And I enter the email address 'lance.moore@blackbaud.com'
    And I click Send on the letter template page
#    No way to confirm the email atm, we'll leave it at the send for now
#    Then the email should send successfully to lance.moore@blackbaud.com
#    And when you open the email everything within it should display properly

  Scenario: Email preview - guided mode newsletter
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates on the Correspondence Categories page
    And I click on the 'Pistachio Goodness - Guided Mode Static' letter template
    And I click Email under the Preview menu on the letter template page
    And I enter the email address 'lance.moore@blackbaud.com'
    And I click Send on the letter template page
#    No way to confirm the email atm, we'll leave it at the send for now
#    Then the email should send successfully to lance.moore@blackbaud.com
#    And when you open the email everything within it should display properly

  Scenario: Email preview - advanced editor mode newsletter
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates on the Correspondence Categories page
    And I click on the 'Simplicity - Advanced Editor Mode Static' letter template
    And I click Email under the Preview menu on the letter template page
    And I enter the email address 'lance.moore@blackbaud.com'
    And I click Send on the letter template page
#    No way to confirm the email atm, we'll leave it at the send for now
#    Then the email should send successfully to lance.moore@blackbaud.com
#    And when you open the email everything within it should display properly
