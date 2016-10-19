@crit_proc3
Feature:Create a new report

  Background:
    Given I login into eTap for CP3
    And the report 'Test Report' does not exist


  Scenario: Create a new report
    Given I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on new report
    And I name the report 'Test Report'
    And I choose Fields from the commonly used report fields category
    And I choose save and run
    And I choose query category 'Base'
    And I choose query 'All Constituents - A'
    And I accept on the default report format 'Display Results on Screen'
    When I click on submit
    Then I should see the report 'Test Report' and all columns displayed to screen
   |Fields        |
   |Sort Name     |
   |Address Lines |
   |City          |
   |State/Province|
   |Postal Code   |
   |Sort Name     |
   |Date          |
   |Fund          |
   |Received      |
   |Full Address with Country (Multi Line) |
   |Full Address with Country (Single Line)|
   |Full Address without Country (Multi Line)|
   |Full Address without Country (Single Line)|



  Scenario: Create a new report
    Given I click on reports
    And I click on Manage Reports on the reports menu
    And I click on the system category
    And I click on new report
    And I name the report 'Test Report'
    And I choose 'Journal Fields' category
    And I choose Fields from the Journal category
    And I choose save and run
    And I choose query category 'Journal Entry Date'
    And I choose query 'This Year - JE'
    And I accept on the default report format 'Display Results on Screen'
    When I click on submit
    Then I should see the report 'Test Report' and all columns displayed to screen
      |Fields        |
      |Linked Hard Credit Full Address with Country (Multi Line)|
      |Linked Hard Credit Full Address with Country (Single Line)|
      |Linked Hard Credit Full Address without Country (Multi Line)|
      |Linked Hard Credit Full Address without Country (Single Line)|
      |Linked Soft Credit Full Address with Country (Multi Line)    |
      |Linked Soft Credit Full Address with Country (Single Line)   |
      |Linked Soft Credit Full Address without Country (Multi Line) |
      |Linked Soft Credit Full Address without Country (Single Line)|
      |Gift Aid Declaration Full Address with Country (Multi Line)  |
      |Gift Aid Declaration Full Address with Country (Single Line) |
      |Gift Aid Declaration Full Address without Country (Multi Line)|
      |Gift Aid Declaration Full Address without Country (Single Line)|
      |Gift Aid Declaration Name                                      |
