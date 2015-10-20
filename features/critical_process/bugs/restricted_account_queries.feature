Feature: TFS 531822 -- Queries previewed by security restricted users are returning accounts they should not see

  Scenario: A 'Default' security group user should not be able to view
    accounts that they do not have the right to see
    Given I create constituent 'Xyz321 Abc123'
    And account security query 'Abc123' for name 'Xyz321 Abc123' has been created
    And a query 'Name Xyz321 Abc123' for name 'Xyz321 Abc123' has been created
    And I click on the Management drop down
    And I click on Security Groups on the management menu
    And I start a new security group 'Account Restrictions'
    And I set the security group queries to Abc123, Abc123, Abc123, Abc123
    # Key step:
    And I deny all query permissions
    And I save a security group
    And I create user 'testUser1'
    And I log out of eTap
    And I am logged into eTap
    And I click on the Management drop down
    And I click on Security Groups on the management menu
    And set 'testUser1' rights to non admin
    And I log out of eTap
    When I login into eTap with values 'testUser1', 'Password!'
    And I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And I should see I should see my organization account in the query results
    Then I should see 'Xyz321 Abc123' in the query results

  Scenario: A 'Default' security group user should not be able to view
  accounts that they do not have the right to see
    Given I create constituent 'Xyz321 Abc123'
    And account security query 'Abc123' for name 'Xyz321 Abc123' has been created
    And a query 'Name Xyz321 Abc123' for name 'Xyz321 Abc123' has been created
    And I click on the Management drop down
    And I click on Security Groups on the management menu
    And I start a new security group 'Account Restrictions'
    And I set the security group queries to Abc123, Abc123, Abc123, Abc123
    # Key step:
    And I grant all query permissions
    And I save a security group
    And I create user 'testUser1'
    And I log out of eTap
    And I am logged into eTap
    And I click on the Management drop down
    And I click on Security Groups on the management menu
    And set 'testUser1' rights to non admin
    And I log out of eTap
    When I login into eTap with values 'testUser1', 'Password!'
    And I click Queries on the main menu
    And I click on the 'Base' category
    And I click preview below the 'All Accounts' query on the Create a New Query page
    And I should see I should see my organization account in the query results
    Then I should see 'Xyz321 Abc123' in the query results
