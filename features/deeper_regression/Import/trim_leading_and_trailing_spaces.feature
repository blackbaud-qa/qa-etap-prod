@deep_reg
Feature: Trim leading/trailing spaces from the mapping formulas on step 2 of the import wizard

  Background:
    Given I login into eTap for deeper regression

  Scenario: running a successful gift import with leading and trailing spaces removed from formulas on step 2
    When I click Management on the main menu
    And I click on Import on the management menu
    And I click 'Standard eTapestry Imports' on the Imports screen
    And I click New Import on the Standard eTapestry Imports screen
    And I set the Name to 'TL Spaces For Automation' on the Import screen
    And I choose the 'TL Spaces For Automation A' file on the Import screen
    And I set the Select the Type of Information to Import to 'Account Information with Single Gift' on the Import screen
    And I set the Country to 'United States' on the Import screen
    And I set the name format to 'Assign Individual to all accounts' on the Import screen
    And I click Next on the Import screen
    And I click Import Another eTapestry Field on the Import screen
    And I click 'Address Lines' on the Import Field pop up
    And I click 'City' on the Import Field pop up
    And I click 'State/Province' on the Import Field pop up
    And I click 'Postal Code' on the Import Field pop up
    And I click 'Voice' on the Import Field pop up
    And I click 'Email' on the Import Field pop up
    And I click 'Check Date' on the Import Field pop up
    And I click 'Check Number' on the Import Field pop up
    And I click 'Gender' on the Import Field pop up
    And I click 'Attributes' on the Import Field pop up
    And I click 'Maiden Name' on the Import Field pop up
    And I click 'Date of Birth' on the Import Field pop up
    And I click 'Close' on the Import Field pop up
    And In the Individual Name Format section I set the 'Title' mapping field to '[Title] ' on the Import Screen
    And In the Individual Name Format section I set the 'First Name' mapping field to ' [First]' on the Import Screen
    And In the Individual Name Format section I set the 'Middle Name' mapping field to ' [Middle] ' on the Import Screen
    And In the Individual Name Format section I set the 'Last Name' mapping field to '[Last] ' on the Import Screen
    And In the Individual Name Format section I set the 'Suffix' mapping field to 'RN. ' on the Import Screen
    And I set the 'Account Name' dropdown to 'Map from your file or use custom text' on the Import Screen
    And In the Individual Name Format section I set the 'Account Name' mapping field to ' [First] [Middle] [Last] ' on the Import Screen
    And I set the 'Sort Name' dropdown to 'Map from your file or use custom text' on the Import Screen
    And In the Individual Name Format section I set the 'Sort Name' mapping field to ' [Last], [First] [Middle]' on the Import Screen
    And I set the 'Short Salutation' dropdown to 'Map from your file or use custom text' on the Import Screen
    And In the Individual Name Format section I set the 'Short Salutation' mapping field to '[First] ' on the Import Screen
    And I set the 'Long Salutation' dropdown to 'Map from your file or use custom text' on the Import Screen
    And In the Individual Name Format section I set the 'Long Salutation' mapping field to '[Title] [Last] ' on the Import Screen
    And I set the 'Envelope Salutation' dropdown to 'Map from your file or use custom text' on the Import Screen
    And In the Individual Name Format section I set the 'Envelope Salutation' mapping field to ' [Title] [First] [Middle] [Last] ' on the Import Screen
    And In the All other fields section I set the 'Persona Type' mapping field to ' [Persona Type]' on the Import Screen
    And In the All other fields section I set the 'Date' mapping field to ' [Date]' on the Import Screen
    And In the All other fields section I set the 'Received' mapping field to '[Received] ' on the Import Screen
    And In the All other fields section I set the 'Fund' mapping field to 'General ' on the Import Screen
    And In the All other fields section I set the 'Gift Type' mapping field to ' Check' on the Import Screen
    And In the All other fields section I set the 'Address Lines' mapping field to ' [Address]' on the Import Screen
    And In the All other fields section I set the 'City' mapping field to '[City] ' on the Import Screen
    And In the All other fields section I set the 'State/Province' mapping field to ' [State]' on the Import Screen
    And In the All other fields section I set the 'Postal Code' mapping field to '[Postal Code] ' on the Import Screen
    And In the All other fields section I set the 'Email' mapping field to ' [Email]' on the Import Screen
    And In the All other fields section I set the 'Voice' mapping field to '[Voice] ' on the Import Screen
    And In the All other fields section I set the 'Check Date' mapping field to '[Check Date] ' on the Import Screen
    And In the All other fields section I set the 'Check Number' mapping field to ' [Check Number]' on the Import Screen
    And In the All other fields section I set the 'Gender' mapping field to 'Female ' on the Import Screen
    And In the All other fields section I set the 'Attributes' mapping field to ' [Attributes]' on the Import Screen
    And In the All other fields section I set the 'Maiden Name' mapping field to ' [Maiden Name] ' on the Import Screen
    And In the All other fields section I set the 'Date of Birth' mapping field to ' [Date of Birth] ' on the Import Screen
    And I mark the Individual fields checkbox next to 'Account Name' on the import screen
    And I mark the other fields checkbox next to 'Persona Type' on the import screen
    And I click Next on the Import screen
    And I click Next on the Import screen
    And I click Next on the Import step 4
    Then I should see the Import Summary page
    And I should see 'Accounts Created 2' on the Import Summary page
    And I should see 'Accounts Modified 0' on the Import Summary page
    And I should see 'Journal Entries Created 2' on the Import Summary page
    And I click Next on the Import screen
#TODO: Clean up dirty solution for In the Individual Name Format section I should see the 'Title' mapping field set to '[Title]' on the Import Screen" step definition
    And I verify that import template 'TL Spaces For Automation' has cleared out the leading and trailing spaces
    And I verify that the account for Danielle D Davidson has been imported correctly
    And I verify that the account for Ellie Anne D Von Elder has been imported correctly


