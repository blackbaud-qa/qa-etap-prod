Feature: Ability to search for Account Name in the query results

  Scenario: Search for a name within Base: All Accounts
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'Smith' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '3' results on the query preview page
    And I should see 'Bob Smith' in the query results
    And I should see 'Ed Smith' in the query results
    And I should see 'Kevin Smith' in the query results
    And I click I click Clear Search on the query preview page
    Then I should see '58' results on the query preview page

  Scenario: Search for and account with any name field columns
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Journal Entries' query on the Create a New Query page
    And I remove the Account Name column
    And I type 'Jose' into the query preview search field
    And I click on the magnifying glass in the search field
    Then I should see '2' results on the query preview page
    And I should see a journal entry dated '8/1/2015' on the query preview page
    And I should see a journal entry dated '9/4/2013' on the query preview page

  Scenario: Search for Account within a newly created query
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Donations made in 2015' on the Create a New Query page
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
    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'Don Cooper' into the query preview search field
    And I press Enter on the keyboard
    And I should see '3' results on the query preview page
    And I click I click Clear Search on the query preview page
    Then I should see '45' results on the query preview page

  Scenario: Search by words not found in the Account Name
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And I type 'Bloomington' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '0' results on the query preview page
    And I type '41' into the query preview search field
    And I press Enter on the keyboard
    And I should see '0' results on the query preview page
    And I click I click Clear Search on the query preview page
    Then I should see '58' results on the query preview page

  Scenario: Search for a suffix within Base: All Accounts
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And the ghost text in the query preview search field should say Search for Account Name
    And I type 'MD' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '1' results on the query preview page
    And I should see 'Haley Faye Crane, MD' in the query results
    And I click I click Clear Search on the query preview page
    Then I should see '58' results on the query preview page

  Scenario: Search will not be saved between runs of query preview
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Constituents' query on the Create a New Query page
    And I type 'John' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '4' results on the query preview page
    And I should see 'John Carr' in the query results
    And I should see 'John Ervin' in the query results
    And I should see 'John Selby' in the query results
    And I should see 'John Wright' in the query results
    And I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Constituents' query on the Create a New Query page
    Then I should see '51' results on the query preview page

  Scenario: Filter by name, drill into an account, click the back button, and it should still show the filtered name results
    Given I login into eTap for CP1
    When I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Constituents' query on the Create a New Query page
    And I type 'John' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '4' results on the query preview page
    And I click on the 'John Wright' account
    And I click the back button
    And I should see '4' results on the query preview page
    And I click on the 'Base' category
    And I click preview below the 'All Journal Entries' query on the Create a New Query page
    And I click Restore Defaults on the query preview page
    And I type 'John' into the query preview search field
    And I click on the magnifying glass in the search field
    And I should see '7' results on the query preview page
    And I click on the first 'Gift' for 'John Ervin'
    And the Received Amount should be set to '$25.00'
    And I click the back button
    Then I should see '7' results on the query preview page