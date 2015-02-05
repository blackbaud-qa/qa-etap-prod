Feature: Importing Constituent and Gift Information

  Scenario: running a successful gift import with address information included
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Import
    And I click Standard eTapestry Imports
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'Constituent and Gift Import' on the Import screen
    And I click Browse on the Import screen
    And I select the file titled 'Constituent and Gift Import File A'
    And I set the Select the Type of Information to Import to Account Information with Single Gift on the Import screen
    And I set the Country to United States on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click Address Lines on the Import screen
    And I click City on the Import screen
    And I click State on the Import screen
    And I click Postal Code on the Import screen
    And I click Short Salutation on the Import screen
    And I click Long Salutation on the Import screen
    And I click Envelope Salutation on the Import screen
    And I click Voice on the Import screen
    And I click Mobile on the Import screen
    And I click Email on the Import screen
    And I click Check Date on the Import screen
    And I click Check Number on the Import screen
    And I click Credit Card Expiration Date on the Import screen
    And I click Credit Card Number on the Import screen
    And I click Close on the Import screen
    And I click on the Persona Type mapping icon on the Import screen
    And I click Persona Type from my file
    And I the X on the Import screen
    And I click on the Account Name mapping icon on the Import screen
    And I click Name from my file
    And I the X on the Import screen
    And I click on the Sort Name mapping icon on the Import screen
    And I click Sort Name from my file
    And I the X on the Import screen
    And I click on the Date mapping icon on the Import screen
    And I click Date from my file
    And I the X on the Import screen
    And I click on the Received mapping icon on the Import screen
    And I click Received from my file
    And I the X on the Import screen
    And I click on the Fund mapping icon on the Import screen
    And I click Fund from my file
    And I the X on the Import screen
    And I click on the Gift Type mapping icon on the Import screen
    And I click Gift Type from my file
    And I the X on the Import screen
    And I click on the Address Lines mapping icon on the Import screen
    And I click Address Lines from my file
    And I the X on the Import screen
    And I click on the City mapping icon on the Import screen
    And I click City from my file
    And I the X on the Import screen
    And I click on the State mapping icon on the Import screen
    And I click State from my file
    And I the X on the Import screen
    And I click on the Postal Code mapping icon on the Import screen
    And I click Postal Code from my file
    And I the X on the Import screen
    And I click on the Short Salutation mapping icon on the Import screen
    And I click Short Salutation from my file
    And I the X on the Import screen
    And I click on the Long Salutation mapping icon on the Import screen
    And I click Long Salutation from my file
    And I the X on the Import screen
    And I click on the Envelope Salutation mapping icon on the Import screen
    And I click Envelope Salutation from my file
    And I the X on the Import screen
    And I click on the Mobile mapping icon on the Import screen
    And I click Mobile from my file
    And I the X on the Import screen
    And I click on the Voice mapping icon on the Import screen
    And I click Voice from my file
    And I the X on the Import screen
    And I click on the Email mapping icon on the Import screen
    And I click Email from my file
    And I the X on the Import screen
    And I click on the Check Date mapping icon on the Import screen
    And I click Check Date from my file
    And I the X on the Import screen
    And I click on the Check Number mapping icon on the Import screen
    And I click Check Number from my file
    And I the X on the Import screen
    And I click on the Credit Card Number mapping icon on the Import screen
    And I click Credit Card Number from my file
    And I the X on the Import screen
    And I click on the Credit Card Expiration Date mapping icon on the Import screen
    And I click Credit Card Expiration Date from my file
    And I the X on the Import screen
    And I mark the checkbox next to Account Name on the import screen
    And I mark the checkbox next to Persona Type
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I should see the Import Summary page
    And '2' accounts were created
    And '2' accounts were modified

  Scenario: missing required fields
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Import
    And I click Standard eTapestry Imports
    And I click Constituent and Gift Import on the Standard eTapestry Imports screen
    And I click Browse on the Import screen
    And I select the file titled 'Constituent and Gift Import File B'
    And I click Next on the Import screen
    And I delete the text in the Sort Name field on the Import screen
    And I click Next on the Import screen
    And I click OK on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    Then I receive the following message: We were unable to process your import because of issues with your import file. NO DATA was added to your database including lines where there were no errors.

  Scenario: deleting an import template
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Import
    And I click Standard eTapestry Imports
    And I click Delete below the Constituent and Gift Import on the Standard eTapestry Imports screen
    And I click Yes on the Standard eTapestry Imports screen
    Then I should not see the Constituent and Gift Import