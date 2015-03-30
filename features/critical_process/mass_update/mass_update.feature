Feature: Mass Update

    Scenario: Update Existing Account Values
     Given I am logged into eTap
     When I click Management on the main menu
     And I click Mass Update
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And the 'Account Type' single select field should be set to 'Individual'
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Accounts
     And I type 'Kevin Smith' into the search field
     And I click Find
     And I click on the 'Kevin Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Account Type' set to 'Individual' on the payment page
     And I click Accounts
     And I type 'Ed Smith' into the search field
     And I click Find
     And I click on the 'Ed Smith' account
     And I click on the 'Defined Fields' page of the constituent record
     And I should see 'Account Type' set to 'Individual' on the payment page
     And I click Management on the main menu
     And I click Mass Update
     And I click Update Existing Accounts on the Mass Update page
     And I set the query category to 'Mass Update'
     And I set the query to 'Update Existing Account Values - A'
     And I set the Update Type to Remove
     And the 'Account Type' single select field should be set to 'Individual'
     And I click Next on the Mass Update page
     And I should see the message Accounts to Update: '4' on the mass update page
     And I click Next on the Mass Update page
     And I should see the following message 'Mass Update Completed Successfully' as a result of this mass update
     And I click Queries on the main menu
     And I click on the 'Mass Update' category
###    Add query to automationbot.us database before checkin, and move category towards top  ###
     And I click on the 'Account Type Is Blank' query
     And I click Save And 'Preview'
     Then I should see the message 'Displaying 1 - 2 of 2' on the query preview screen


#    Scenario: Create New Contacts
#     Given I click Create New Contacts on the Mass Update page
#     When I choose the category of Base
#     And I choose the query of All Constituents
#     And I enter "today's" date
#     And I select the contact method of Email
#     And I enter the subject of "Fall Appeal 2015"
#     And I click Next on the Mass Update page
#     And I click Next on the Mass Update page
#     And I click Ok
#     Then I should see the following message:  [X] Accounts were updated as a result of this mass update
#
#    Scenario: Empty Query
#     Given I click Update Existing Accounts on the Mass Update page
#     When I choose the category of Base
#     And I choose the query of All Tributes
#     And I click on Account Type
#     And I select Individual
#     And I click Next on the Mass Update page
#     Then I should see the following message:  You cannot perform your mass update because there are no accounts in your query.