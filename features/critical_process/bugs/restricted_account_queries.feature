@bugs
Feature: TFS 531822 -- Queries previewed by security restricted users are returning accounts they should not see

Scenario: A 'Default' security group user should not be able
    to view accounts that they do not have the right to see
  Given I create constituent 'Xyz321 Abc123'
  And account security query 'Xyz123' for name 'Xyz321 Abc123' has been created
  And a query 'Name Xyz321 Abc123' for name 'Xyz321 Abc123' has been created
  And I click Management on the main menu
  And I click on Security Groups on the management menu
  And I start a new security group 'Account Restrictions1'
  And I set the security group queries to Xyz123, Xyz123, Xyz123, Xyz123
  # Key step:
  And I deny all query permissions
  And I save a security group
  And I create user 'testUser1'
  And I log out of eTap
  And I am logged into eTap
  And I click Management on the main menu
  And I click on Security Groups on the management menu
  And set 'testUser1' rights to security group 'Account Restrictions1'
  And I log out of eTap
  When I login into eTap with values 'testUser1', 'Password!'
  And I click Queries on the main menu
  And I click on Manage Queries on the queries menu
  And I click on the 'Base' category
  And I click preview below the 'Name Xyz321 Abc123' query on the Create a New Query page
  Then I should not see 'Xyz321 Abc123' in the query results
  And I log out of eTap

Scenario: A 'Default' security group user should be able
    to view accounts that they do not have the right to see
  Given I create constituent 'Mno321 Abc123'
  And account security query 'Mno123' for name 'Mno321 Abc123' has been created
  And a query 'Name Mno321 Abc123' for name 'Mno321 Abc123' has been created
  And I click Management on the main menu
  And I click on Security Groups on the management menu
  And I start a new security group 'Account Restrictions2'
  And I set the security group queries to Mno123, Mno123, Mno123, Mno123
  # Key step:
  And I grant all query permissions
  And I save a security group
  And I create user 'testUser2'
  And I log out of eTap
  And I am logged into eTap
  And I click Management on the main menu
  And I click on Security Groups on the management menu
  And set 'testUser2' rights to security group 'Account Restrictions2'
  And I log out of eTap
  When I login into eTap with values 'testUser2', 'Password!'
  And I click Queries on the main menu
  And I click on Manage Queries on the queries menu
  And I click on the 'Base' category
  And I click preview below the 'Name Mno321 Abc123' query on the Create a New Query page
  Then I should see 'Mno321 Abc123' in the query results
