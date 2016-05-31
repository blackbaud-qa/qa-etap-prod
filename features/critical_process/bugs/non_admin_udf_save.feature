@bugs
Feature: Verifying that non-admins cannot remove data from UDFs they do not have access to

  Background:
    Given I login into eTap for bugs

  Scenario: Saving UDFs on a Journal Entry in full eTapestry
    Given I log out of eTap
    When I login into eTap with values 'Automationbot.khammer.us', 'spicypancakes1'
    And I click Management on the main menu
    And I click System Defined Fields on the management menu
    And I click 'Security Rights' on the System Defined Fields page
#    And I add the Security Right value 'Admins Only'  #already created in target db
#    And I click Save and Finish on the UDF page
    And I click Management on the main menu
    And I click on User Defined Fields on the management menu
    And I click the 'Base' category on the User Defined Fields page
    And I add the User Defined Field 'Transaction Number' with 'Admins Only' Security Rights Applied
    And I click Giving on the main menu
    And I click on Add a Gift or Pledge on the giving menu
    And I click Search for an Account
    And I click on Add Account on the pop up find account screen
    And I set the Name Format to 'Individual' on the pop up find account screen
    And I set the Title to 'Mr.' on the pop up find account screen
    And I set the First Name to 'Justin' on the pop up find account screen
    And I set the Last Name to 'Timberlake' on the pop up find account screen
#    And I set the UDF 'Account Type' dropdown to 'Individual' in the UDF section on the classic add account page
    And I click Save on the pop up find account screen
    And set the date to '11/3/2090'
    And set the Received Amount to '100.00'
    And set the Fund to 'Unrestricted'
    And set the Gift Type to 'Check'
    And set the Check Date to '11/3/2090'
    And set the Check Number to '1346'
    And I click on the User Defined Fields section on the new payment page
    And I set the UDF 'Transaction Number' to '5' on the new payment page
#    And I set the multi-select UDF 'Security Rights' to 'Admins Only' on the gift screen
    And I click Save And 'Edit'
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Transaction Number' set to '5' on the payment page
    And I log out of eTap
    And I login into eTap with values 'Automationbot.khammer.us.nonadmin', 'abc123'
    And I type 'Timberlake' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Justin Timberlake' account
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And I click on the User Defined Fields section on the new payment page
#    And I click the 'Show All Fields' on the transaction page
    And I set the single-select UDF 'Tribute Type' to 'in honor of' on the gift screen
    And I set the UDF 'Ticket Quantity A' to '4' on the new payment page
    And I click Save And 'Edit'
    And I log out of eTap
    And I login into eTap with values 'Automationbot.khammer.us', 'spicypancakes1'
    And I type 'Timberlake' into the dynamic search field
    And I press Enter on the keyboard
    And I click on the 'Justin Timberlake' account
    And I click on 'Journal' in the account header
    And I click on the Gift listed in the journal
    And I click on the User Defined Fields section on the new payment page
    And I should see 'Tribute Type' set to 'in honor of' on the payment page
    And I should see 'Transaction Number' set to '5' on the payment page
    And I should see 'Ticket Quantity A' set to '4' on the payment page
    And the Received Amount should be set to '$100.00'
    And the Fund should be set to 'Unrestricted'
    And the date should be set to '11/3/2090'
    And I click Delete on the transaction page
    And I should see the message '0 Journal Entries' on the journal page
    And I click on 'Account Settings' in the account header
    And I click Delete Role on the Account Settings page
    And I click Yes to permanently delete the item
    Then I should see the message: '0 accounts found'



