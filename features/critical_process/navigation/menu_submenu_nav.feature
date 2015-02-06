@ready
Feature: Critical Process - General Navigation
  As a QA analyst
  I want to run through general navigation during critical process testing
  In order to ensure users can access all areas of eTapestry


  Scenario Outline: Role Icon Navigation
    #Given I see a list of constituents accounts on the find account screen
    Given I click Accounts on the main menu
    When I type 'Jose' into the search field
    And I press Enter on the keyboard
    And I click on <page option> from the Role Icon drop down
    Then I should be taken to 'Jose' <expected result> page

  Examples:
    | page option    | expected result |
    | Home           | Home            |
    | Personas       | Personas        |
    | Relationships  | Relationships   |
    | Journal        | Journal         |
    | Other          | Other           |
    | Defined Fields | Defined Fields  |

  Scenario Outline:  Menu Navigation
    When I click <menu option> on the main menu
    Then I should be taken to <expected result>

  Examples:
    | menu option    | expected result          |
    | Home           | Home                     |
    | Accounts       | Find Account             |
    | Giving         | Quick Gift Entry         |
    | Communications | Communication Categories |
    | Queries        | Query Categories         |
    | Reports        | Report Categories        |
    | Management     | Management               |

  Scenario Outline:  Home SubMenu Navigation
    Given I click on the Home drop down
    When I click on <submenu option> on the home menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option              | expected result              |
    | Go to Home                  | Home                         |
    | Manage User Preferences     | User Preferences             |
    | Find an Account             | Find Account                 |
    | Add a Gift or Pledge        | Quick Gift Entry             |
    | Manage Communications       | Communication Categories     |
    | Open My Scheduled Items     | My Scheduled Items           |
    | Open My Drop Box            | Drop Box                     |
    | Getting Started Wizard      | Getting Started Wizard       |



#  Scenario Outline:  Home SubMenu Navigation for URLs
#    Given I click on the Home drop down
#    When I click on <submenu option> on the home menu
#    Then I should be taken to the URL <expected result>
#
#  Examples:
#    | submenu option              | expected result              |
##    | Learn Best Practices        | https://www.blackbaud.com/files/support/helpfiles/etapestry/etapestry/Content/ETAPBestPracticesIntro.html |
#    | Give Feedback on Idea Bank  | 'https://etapestry.uservoice.com/forums/17015-etapestry-idea-bank'                                          |
#    | Help                        | 'https://www.blackbaud.com/files/support/helpfiles/etapestry/etapestry/default.html'                        |


  Scenario Outline:  Accounts SubMenu Navigation
    Given I click on the Accounts drop down
    When I click on <submenu option> on the accounts menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option  | expected result   |
    | Find an Account | Find Account   |
#    | Add an Account  | New Account Page  |
#
  Scenario Outline:  Giving SubMenu Navigation
    Given I click on the Giving drop down
    When I click on <submenu option> on the giving menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option          | expected result                   |
    | Add a Gift or Pledge    | Quick Gift Entry                  |
    | Import Gifts            | Import Categories page            |
##    | Banking Import          | Banking Import page               |
    | Giving Dynamics Report  | Giving Dynamics launch page       |
    | Top Donor Report        | Top Donor launch page             |
    | Pledge Report           | Pledge Report launch page         |
    | Fund Activity Summary   | Fund Activity Summary launch page |
    | Donor Cash Projection   | Donor Cash Projection launch page |
    | Prospect Research       | Prospect Research page            |
    | Planned Giving Calcs    | Planned Giving Calculators page   |
    | Cultivation Tools       | Cultivation Tools page            |

  Scenario Outline:  Communications SubMenu Navigation
    Given I click on the Communications drop down
    When I click on <submenu option> on the communications menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option          | expected result                     |
    | Manage Communications   | Communication Categories      |
    | Add a New Category      | Create Correspondence category page |
    | Constant Contact        | eTapestry & Constant Contact page   |

  Scenario Outline:  Queries SubMenu Navigation
    Given I click on the Queries drop down
    When I click on <submenu option> on the queries menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option                 | expected result                                      |
    | Manage Queries                 | Query Categories                                     |
    | Add a New Category             | Create Query category page                           |
#    | Base                           | Edit Query Category: Base                            |
#    | Journal Entry Date             | Edit Query Category: Journal Entry Date             |
    | Constituent Journal Entry Date | Edit Query Category: Constituent Journal Entry Date |
    | LYBUNT & SYBUNT                | Edit Query Category: LYBUNT & SYBUNT                |
    | Pledges and Payments           | Edit Query Category: Pledges and Payments           |
    | Processed Transactions         | Edit Query Category: Processed Transactions         |
    | eTapestry Security             | Edit Query Category: eTapestry Security             |

  Scenario Outline:  Reports SubMenu Navigation
    Given I click on the Reports drop down
    When I click on <submenu option> on the reports menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option               | expected result                  |
    | Manage Reports               | Report Categories                |
    | Relationship Filters         | Relationship Filters page        |
#    | System                       | Edit Report Category: System     |
    | Top Donor Report             | Launch Top Donor Report          |
    | Journal Entry List           | Launch Journal Entry List        |
    | Recency Report               | Launch Recency Report            |
    | Shared Links Report          | Launch Shared Links Report       |
    | Aging Pledge Summary         | Launch Aging Pledge Summary      |
    | eTapestry Standard Reports   | eTapestry Standard Reports page  |
    | eTapestry Benchmark Reports  | eTapestry Benchmark Reports page |

  Scenario Outline:  Management SubMenu Navigation
    Given I click on the Management drop down
    When I click on <submenu option> on the management menu
    Then I should be taken to <expected result>

  Examples:
    | submenu option                  | expected result             |
    | Import                          | Import Categories page      |
    | Standard Exports                | eTapestry Standard Exports  |
    | Mass Update                     | Mass Updates page           |
#    | My Organization                 | Orgs Persona page          |
    | My User                         | My User's Home page         |
    | All Users                       | Users page                  |
    | User Activity                   | Launch User Activity page   |
    | Security Groups                 | Security Groups page        |
    | Getting Started Wizard          | Getting Started Wizard      |
    | eStore (Cart)                   | Cart page                   |
#    | Fundraisers                     | Fundraisers page            |
    | DIY Forms                       | My Online Forms page        |
    | System Defined Fields           | System Defined Fields page  |
    | User Defined Fields             | User Defined Fields page    |
    | Relationship Types              | Relationship Types page     |
    | Sticky Note Types               | Sticky Note Types page      |
    | Funds                           | Funds page                  |
    | Campaigns                       | Campaigns page              |
    | Approaches                      | Approach page               |
    | Letters                         | Letters page                |
    | Goals                           | Goals page                  |
#    | Manage Organization Preferences | Orgs Preferences page      |
    | Manage User Preferences         | User Preferences     |