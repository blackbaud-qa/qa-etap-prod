@bugs
Feature: Load More and Query Preview Pagination
  Provides coverage for TFS bug 594239

  Background:
    Given I login into eTap for bugs

  Scenario: Import 26 gifts and verify that load more works on the journal page
    When I click Accounts on the main menu
    And I click Add an Account on the Account drop down menu
    And I add an account to test the Journal Load More feature
    And I import 26 gifts to the newly created account
    And I type 'Bruce' into the dynamic search field
    And I click on the 'Bruce Robinson' account
    And I click on 'Journal' in the account header
    And I should see the message '26 Journal Entries' on the journal page
    And I should not see a journal entry dated '8/1/2016' on the journal page
    And I click Load More at the bottom of the Journal page
    Then I should see a journal entry dated '8/1/2016' on the journal page

  Scenario: When previewing a query that has more than 100 results, I can use the page numbers to view additional results.
    When I click Queries on the main menu
    And I click on Manage Queries on the queries menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And I scroll to the bottom of the query preview page
    And I can navigate to page 2 at the bottom of the query preview page
    Then I should see 'Harry P Minarik' in the query results
    And I can navigate to page 1 at the bottom of the query preview page
    And I should see 'Talisha Almond' in the query results

#  Old steps written for bug that we ended up not automating
#    And I zoom out in the browser
#    And I reset the zoom to 100%

