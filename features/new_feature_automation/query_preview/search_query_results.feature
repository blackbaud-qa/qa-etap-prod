@sprint
Feature: Ability to search for Account Name in the query results

  Background: I am logged into eTapestry
    Given I login into eTap for CP1

  Scenario: Search for a name within an account query
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Accounts Imported for Search Query Results' query on the Create a New Query page
    And I should see '118 Accounts' results on the query preview page
#    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'John' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '1 Account' results on the query preview page
    And I should see 'John P Lajoie' in the query results
    And I type 'John*' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '4 Accounts' results on the query preview page
    And I should see 'John P Lajoie' in the query results
    And I should see 'Deloris S Johnson' in the query results
    And I should see 'Frances R Johnson' in the query results
    And I should see 'Johnny Daniel Childress' in the query results
    And I click I click Clear Search on the query preview page
    Then I should see '118 Accounts' results on the query preview page

  Scenario: Search for and account without any name field columns
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Gifts Imported for Search Query Results' query on the Create a New Query page
    And I remove the Account Name column
    And I type 'David' into the query preview search field
    And I click on the magnifying glass in the search field
    Then I should see '4 Journal Entries' results on the query preview page
    And I should see a journal entry dated '2/27/2014' on the query preview page
    And I should see a journal entry dated '9/1/2015' on the query preview page
    And I should see a journal entry dated '8/22/2014' on the query preview page
    And I should see a journal entry dated '9/7/2014' on the query preview page

  Scenario: Search for Account within a newly created query
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donations made in 2015' on the Create a New Query page
    And I set the Starting Criteria Query Category to 'Search Query Results'
    And I set the Starting Criteria Query to 'All Accounts Imported for Search Query Results - A'
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I set the Available Fields category to 'Commonly Used Fields' on the Create a New Query page
    And I click on 'Journal Entry Date' under Available Fields on the Create a New Query page
    And I set the Journal Entry Date Range Type to 'Custom Range' on the Create a New Query page
    And I set the Journal Entry Date Start Date to '1/1/2015' on the Create a New Query page
    And I set the Journal Entry Date End Date to '12/31/2015' on the Create a New Query page
    And I set the Available Fields category to 'Amounts' on the Create a New Query page
    And I click on 'Individual Transaction Received' under Available Fields on the Create a New Query page
    And I set Individual Transaction Received to 'Greater Than Or Equal To' '.01' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see '52 Journal Entries' results on the query preview page
#    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'Carl Clegg' into the query preview search field
    And I press Enter on the keyboard
    And I should see '2 Journal Entries' results on the query preview page
    And I click I click Clear Search on the query preview page
    Then I should see '52 Journal Entries' results on the query preview page

  Scenario: Search by words not found in the Account Name
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Accounts Imported for Search Query Results' query on the Create a New Query page
    And I type 'Houston' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '0 Accounts' results on the query preview page
    And I click I click Clear Search on the query preview page
    And I should see '118 Accounts' results on the query preview page
    And I type '123' into the query preview search field
    And I press Enter on the keyboard
    And I should see '0 Accounts' results on the query preview page
    And I click I click Clear Search on the query preview page
    Then I should see '118 Accounts' results on the query preview page

  Scenario: Search for suffix terms included in the account name
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Accounts Imported for Search Query Results' query on the Create a New Query page
#    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'MD' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '2 Accounts' results on the query preview page
    And I should see 'Rose L Rennie, MD' in the query results
    And I type '1978' into the query preview search field
    And I press Enter on the keyboard
    And I should see '3 Accounts' results on the query preview page
    And I should see 'Peter Rivera, 1978' in the query results
    And I click I click Clear Search on the query preview page
    Then I should see '118 Accounts' results on the query preview page

  Scenario: Search will not be saved between runs of query preview
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Gifts Imported for Search Query Results' query on the Create a New Query page
    And I type 'Gomez' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '2 Journal Entries' results on the query preview page
    And I should see 'Michael M Gomez, II' in the query results
    And I should see 'Ana Marie Sue Gomez' in the query results
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Gifts Imported for Search Query Results' query on the Create a New Query page
    Then I should see '119 Journal Entries' results on the query preview page

  Scenario: Filter by name, drill into an account, click the back button, and it should still show the filtered name results
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Accounts Imported for Search Query Results' query on the Create a New Query page
    And I type 'Jeffery' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '2' results on the query preview page
    And I click on the 'Jeffery Thiel' account
    And I click the back button
    And I should see '2' results on the query preview page
    And I should see 'Jeffery' displayed in the query preview search field
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Gifts Imported for Search Query Results' query on the Create a New Query page
    And I click Restore Defaults on the query preview page
    And I type 'Michael' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '3' results on the query preview page
    And I click on the 'Gift' for 'Michael Patton'
    And the Received Amount should be set to '$395.00'
    And I click the back button
    Then I should see '3' results on the query preview page
    And I should see 'Michael' displayed in the query preview search field

  Scenario: Other random search tests
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Search Query Results' category
    And I click preview below the 'All Accounts Imported for Search Query Results' query on the Create a New Query page
    And I type 'and' into the query preview search field
    And I press Enter on the keyboard
    And I should see '2 Accounts' results on the query preview page
    And I should see 'Scott and Sally Miles' in the query results
    And I type 'at&' into the query preview search field
    And I press Enter on the keyboard
    And I should see '1 Account' results on the query preview page
    And I should see 'AT&T' in the query results
    And I type 'AT&T' into the query preview search field
    And I press Enter on the keyboard
    And I should see '3 Accounts' results on the query preview page
    And I should see 'AT&T' in the query results
    And I type 'II' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '3 Accounts' results on the query preview page
    And I should see 'Victor Rivera, II' in the query results
    And I click I click Clear Search on the query preview page
    Then I should see '118 Accounts' results on the query preview page


