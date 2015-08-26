Feature: Required UDFs appear as required
  Background:
    Given I am logged into eTap

  Scenario: Required UDFs appear as required when accessing account
    Given I am logged into eTap
    When I click Management on the main menu
    And I click User Defined Fields on the management menu
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click Account Type on the UDF page
    And I click Field Attributes
    And I click would you like to make this field required
    And I click Save and Finish on the UDF page
    And I type 'Talisha Almond' into the dynamic search field
    And I click on 'Talisha Almond' in the search results
    And I click on the 'Defined Fields' page of the constituent record
    Then I should see a required icon by Account Type

