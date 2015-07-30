Feature: Create, Edit, Save and Run Queries

  Scenario Outline: Create and Edit a New Query
    Given I am logged into eTap
    And a query category has been created called 'Lucene Testing'
    When I click Queries on the main menu
    And I click on the 'Lucene Testing' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to '<query_name>' on the Create a New Query page
    And I set the data return type to 'Accounts' on the Create a New Query page
    And I set the Available Fields category to '<field_category>' on the Create a New Query page
    And I click on '<field_name>' under Available Fields on the Create a New Query page
    And I set the inputs with '<ids>' with an optional '<prefix>' with '<values>' for type <type>
    And I click Save And 'Preview'
    And I click Edit on the query preview screen
    And I set the data return type to 'Accounts' on the Create a New Query page
    Examples:
      | query_name                        | field_category     | field_name                | type              | prefix                                               | ids                                    | values                        |
      | Account-Account Created By 1      | Account            | Account Created By        | account           |                                                      | entityRoleCreatorSelectButton          | /2                            |
      | Account-Account Created By 2      | Account            | Account Created By        | account           |                                                      | userAsentityRoleCreator                |                               |
      | Account-Account Last Modified By 1| Account            | Account Last Modified By  | account           |                                                      | entityRoleModifierSelectButton         | /2                            |
      | Account-Account Last Modified By 2| Account            | Account Last Modified By  | account           |                                                      | userAsentityRoleModifier               |                               |
      | Account-Account Name 1            | Account            | Account Name              | AccountTextValues | TestEntityRoleForNamesData                           | values                                 | John Carr                     |
      | Account-Account Name 2            | Account            | Account Name              | AccountTextValues | TestEntityRoleForNamesData                           | values                                 | John Carr, Spencer Murphy     |
      | Account-Account Name 3            | Account            | Account Name              | AccountTextValues | TestEntityRoleForNamesData                           | values                                 | John Carr, Spencer Murphy, Xandra Harrison     |
  #    | Account-Account Number            | Account            | Account Number            | numRange          | TestEntityRoleForIdRangeData                         | comparisonKey, id, comparison2Key, id2 | Greater Than, 3, Less Than, 5 |
  #    | Account-Account Recognition Name  | Account            | Account Recognition Name  | textValues        | testByName(TestCustomerForRecognitionNamesData)      | values                                 | John Carr                     |
  #    | Account-Account Recognition Types | Account            | Account Recognition Types | checkboxes        | testByName(TestCustomerForRecognitionTypesData)      | recognitionTypes                       | 0,2,3                         |
  #    | Account-Account Role              | Account            | Account Role              | checkboxes        |  |  |  |
      | Account-Address Lines 1           | Account            | Address Lines             | textValues        | TestEntityRoleForAddressesData           | values                                 | 12884 Fox Road                |
      | Account-Address Lines 2           | Account            | Address Lines             | textValues        | TestEntityRoleForAddressesData           | values                                 | 12884 Fox Road, 1234 N St     |
      | Account-Address Lines 3           | Account            | Address Lines             | textValues        | TestEntityRoleForAddressesData           | values                                 | any                           |
      | Account-Address Lines 4           | Account            | Address Lines             | textValues        | TestEntityRoleForAddressesData           | values                                 | none                          |
      | Account-City 1                    | Account            | City                      | textValues        | TestEntityRoleForCitiesData              | cities                                 | Noblesville                   |
      | Account-City 2                    | Account            | City                      | textValues        | TestEntityRoleForCitiesData              | cities                                 | Noblesville, Carmel           |
      | Account-City 3                    | Account            | City                      | textValues        | TestEntityRoleForCitiesData              | cities                                 | any                           |
      | Account-City 4                    | Account            | City                      | textValues        | TestEntityRoleForCitiesData              | cities                                 | none                          |
#    | Account-County                    | Account            | County                    | textValues        | testByName(TestEntityRoleForCountiesData)            | counties                               | Hamilton                      |
#    | Account-Email Address             | Account            | Email Address             | textValues        | testByName(TestEntityRoleForEmailsData)              | values                                 | John.Carr@blackbaud.com       |
#    | Account-Envelope Salutation       | Account            | Envelope Salutation       | textValues        | testByName(TestEntityRoleForEnvelopeSalutationsData) | values                                 | Mr. John Carr                 |
#    | Account-First Name                | Account            | First Name                | textValues        | testByName(TestEntityRoleForFirstNamesData)          | values                                 | John                          |
     | Account-Postal Code Radius        | Account            | Postal Code Radius        | radius            | TestEntityRoleForPostalCodeRadiusData | postalCode, radius            | 21043, 15                     |
      | Account-Household Relationship    | Account            | Household Relationship    | select            | testByName(TestEntityRoleForHouseholdData)          | household                               | 2                             |
#      | Account-Login Id Present 1        | Account            | Login Id Present          | radio             | testByName(TestEntityRoleForLoginIdData)            | withLoginId                             | false                         |
      | Account-Login Id Present 2        | Account            | Login Id Present          | radio             | testByName(TestEntityRoleForLoginIdData)            | withLoginId                             | true                          |
    | Amounts - Individual Transaction Pledge Arrears | Amounts| Individual Transaction Pledge Arrears | arrears| testByName(TestTransactionForArrearsData)        | comparisonKey, amountString, dynamicDate, asOfDateString | Greater Than, 20, Custom Date, 7/15/2015 |
      | Amounts - Upgraded/Split Transaction Total Arrears | Amounts| Upgraded/Split Transaction Total Arrears | arrears| testByName(TestTransactionForSegmentedArrearsData)        | comparisonKey, amountString, dynamicDate, asOfDateString | Less Than, 100, Start of Next Month |
      | Dates - Account Created Date 1                     | Dates  | Account Created Date                     | dateRange | TestEntityRoleForCreatedDateData                       | dynamicDateRange, startDateString, endDateString         | Custom Range, 7/15/2015, 7/20/2015  |
      | Dates - Account Created Date 2                     | Dates  | Account Created Date                     | dateRange | TestEntityRoleForCreatedDateData                       | dynamicDateRange                                         | Last 7 Days  |

  Scenario Outline: Deleting Queries
    Given I am logged into eTap
    When I click Queries on the main menu
    And I click on the 'Lucene Testing' category
    And I click delete below the '<query_name>' query on the Create a New Query page
    And I click Yes to permanently delete the item
    Examples:
      | query_name                        |
      | Account-Account Created By 1      |
      | Account-Account Created By 2      |
      | Account-Account Last Modified By 1|
      | Account-Account Last Modified By 2|
      | Account-Account Name 1            |
      | Account-Account Name 2            |
      | Account-Account Name 3            |
      | Account-Address Lines 1           |
      | Account-Address Lines 2           |
      | Account-Address Lines 3           |
      | Account-Address Lines 4           |
      | Account-City 1                    |
      | Account-City 2                    |
      | Account-City 3                    |
      | Account-City 4                    |
      | Account-Household Relationship    |
#      | Account-Login Id Present 1        |
      | Account-Login Id Present 2        |

  Scenario: Deleting Categories
    Given I am logged into eTap
    And I click Queries on the main menu
    And I click delete below the 'Lucene Testing' query category
    And I click Yes to permanently delete the item
    Then I should see the 'Lucene Testing' category has been removed from the page






