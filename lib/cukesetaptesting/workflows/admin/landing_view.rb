module Cukesetaptesting
  module Admin
    class LandingView < BaseView
      #dynamic search
      keyword(:dynamic_search) {content.div(:id,"menuAccountSearch").text_field(:class, "searchInput")}
      keyword(:dynamic_search_button) {content.div(:id,"menuAccountSearch").img(:class, "searchIcon")}

      #OTG_INTL keyword(:logout_link) {content.link(:text, 'Logout')}
      keyword(:logout_link) {content.div(:class => 'topMenuSignOut').link}
      keyword(:main_menu) {content.div(:id,'menuBodyDiv')}

      #nav bar
      keyword(:home_tab) {navbar_tab('homeTab').link(:class, "menuTabText")}
      #keyword(:home_dd) {navbar_tab('homeTab').img(:class, "menuTabButton")}
      keyword(:home_dd) {navbar_tab('homeTab').link(:index=>1)}

      keyword(:accounts_tab) {navbar_tab('accountTab').link(:class, "menuTabText")}
      #keyword(:accounts_dd) {navbar_tab('accountTab').img(:class, "menuTabButton")}
      keyword(:accounts_dd) {navbar_tab('accountTab').link(:index=>1)}

      keyword(:giving_tab) {navbar_tab('givingTab').link(:class, "menuTabText")}
      #keyword(:giving_dd) {navbar_tab('givingTab').img(:class, "menuTabButton")}
      keyword(:giving_dd) {navbar_tab('givingTab').link(:index=>1)}

      keyword(:communications_tab) {navbar_tab('communicationTab').link(:class, "menuTabText")}
      #keyword(:communications_dd) {navbar_tab('communicationTab').img(:class, "menuTabButton")}
      keyword(:communications_dd) {navbar_tab('communicationTab').link(:index=>1)}

      keyword(:queries_tab) {navbar_tab('queriesTab').link(:class, "menuTabText")}
      #keyword(:queries_dd) {navbar_tab('queriesTab').img(:class, "menuTabButton")}
      keyword(:queries_dd) {navbar_tab('queriesTab').link(:index=>1)}

      keyword(:reports_tab) {navbar_tab('reportsTab').link(:class, "menuTabText")}
      #keyword(:reports_dd) {navbar_tab('reportsTab').img(:class, "menuTabButton")}
      keyword(:reports_dd) {navbar_tab('reportsTab').link(:index=>1)}

      keyword(:management_tab) {navbar_tab('manageTab').link(:class, "menuTabText")}
  #    keyword(:management_dd) {navbar_tab('manageTab').img(:class, "menuTabButton")}
      keyword(:management_dd) {navbar_tab('manageTab').link(:index=>1)}

      keyword(:accounts) {content.element(:css=> '#accountTab a')}

      #nav bar home dropdown
      keyword(:home_dd_go_home) {home_div.button(:id, "dashboardButton")}
      keyword(:home_dd_manage_preferences) {home_div.button(:id, "preferencesButton")}
      keyword(:home_dd_find_account) {home_quick_links.a(:href, "/prod/entitySearch.do")}
      keyword(:home_dd_add_gift) {home_quick_links.a(:href,"/prod/addJournalTransaction.do?addingByAccountNumberStatus=new&type=Gift")}
      keyword(:home_dd_manage_comms) {home_quick_links.a(:href,"/prod/displayCategories.do?categoryManagerId=Correspondence")}
      keyword(:home_dd_best_practices) {}
      keyword(:home_dd_give_feedback) {home_quick_links.a(:href,"https://etapestry.uservoice.com/forums/17015-etapestry-idea-bank")}
      keyword(:home_dd_help) {home_quick_links.a(:href,"javascript:top.openHelp();")}
      keyword(:home_dd_scheduled_items) {home_div.a(:href,"/prod/scheduledItemsManageNew.do")}
      keyword(:home_dd_dropbox) {home_div.a(:href,"/prod/viewUserDropBox.do")}
      keyword(:home_dd_wizard) {home_div.a(:href,"/prod/gettingStartedWizard.do")}

      #nav bar accounts dropdown
      keyword(:accounts_dd_find_account) {accounts_div.button(:id,"findAccountButton")}
      keyword(:accounts_dd_add_account) {accounts_div.button(:id,"addAccountButton")}

      #nav bar giving dropdown
      keyword(:giving_dd_add_gift) {giving_div.button(:id,"addGiftButton")}
      keyword(:giving_dd_import_gifts) {giving_div.button(:id,"preferencesButton")}
      keyword(:giving_dd_giving_dynamics) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=givingDynamicsSummaryReport.do&type=GivingDynamics&mode=report&name=Giving%20Dynamics%20Report")}
      keyword(:giving_dd_top_donor) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=topDonorReport.do&type=TopDonor&mode=report&name=Top%20Donor%20Report")}
      keyword(:giving_dd_pledge_report) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=pledgeReport.do&mode=report&type=PledgeReport&name=Pledge%20Report")}
      keyword(:giving_dd_fund_activity) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=/activitySummaryReport.do&type=fund&mode=report&name=Fund%20Activity%20Summary")}
      keyword(:giving_dd_donor_cash) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=donorCashProjectionReport.do&mode=report&type=DonorCashProjection&name=Donor%20Cash%20Projection%20Report")}
      keyword(:giving_dd_prospect_research) {giving_div.a(:href,"/prod/ProspectResearch.jsp")}
      keyword(:giving_dd_planned_giving) {giving_div.a(:href,"/prod/launchPlannedGiving.do")}
      keyword(:giving_dd_cultivation_tools) {giving_div.a(:href,"/prod/CultivationTools.jsp")}

      #nav bar communications dropdown
      keyword(:communications_dd_manage_comms) {comms_div.button(:id,'manageCommButton')}
      keyword(:communications_add_category) {comms_div.button(:id,'addNewCategoryButton')}
      keyword(:communications_constant_contact) {comms_div.div(:id, 'commConstantContact').a(:href,'ccPreferences.do?initialSetup=true')}

      #nav bar queries dropdown
      keyword(:queries_dd_manage) {queries_div.button(:id,'manageQueryButton')}
      keyword(:queries_dd_add_category) {queries_div.button(:id,'addNewCategoryButton')}
      keyword(:queries_dd_base) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2735')}
      keyword(:queries_dd_journal_entry) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2791')}
      keyword(:queries_dd_constit_journal_entry) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2792')}
      keyword(:queries_dd_lybunt) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2793')}
      #DEV_HELP
      keyword(:queries_dd_pledges_payments) {queries_div.ul(:id,'queryCategories1').a(:text,'Pledges and Payments')}
      keyword(:queries_dd_processed_trans) {queries_div.ul(:id,'queryCategories2').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2822')}
      keyword(:queries_dd_security) {queries_div.ul(:id,'queryCategories2').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2481')}

      #nav bar reports dropdown
      keyword(:reports_dd_manage_reports) {reports_div.button(:id,'manageReportButton')}
      keyword(:reports_dd_relationship_filters) {reports_div.button(:id,'accountQueryButton')}
      #DEV_HELP
      keyword(:reports_dd_system) {reports_div.ul(:id,'reportCategories1').a(:text,'System')}
      #DEV_HELP
      keyword(:reports_dd_top_donor) {reports_div.ul(:id,'topReports1').a(:text,'Top Donor Report')}
      keyword(:reports_dd_journal) {reports_div.ul(:id,'topReports1').a(:href,'/prod/reportLauncher.do?nextAction=journalEntryListReport.do&mode=report&type=JournalEntryList&name=Journal%20Entry%20List')}
      keyword(:reports_dd_recency) {reports_div.ul(:id,'topReports1').a(:href,'/prod/reportLauncher.do?nextAction=recencyReport.do&type=RecencyReport&mode=report&name=Recency%20Report')}
      keyword(:reports_dd_shared) {reports_div.ul(:id,'topReports2').a(:href,'/prod/reportLauncher.do?nextAction=/sharedLinksReport.do&type=sharedLinks&mode=report&name=Shared%20Links%20Report')}
      keyword(:reports_dd_aging_pledge) {reports_div.ul(:id,'topReports2').a(:href,'/prod/reportLauncher.do?nextAction=agingPledgeSummaryReport.do&type=AgingPledgeSummary&mode=report&name=Aging%20Pledge%20Summary')}
      keyword(:reports_dd_standard) {reports_div.ul(:id,'reportStandard').a(:href,'/prod/SpecialReportCategories.jsp')}
      keyword(:reports_dd_benchmark) {reports_div.ul(:id,'reportStandard').a(:href,'/prod/viewCrossDBReports.do')}

      #nav bar managment dropdown
      keyword(:management_dd_import) {management_div.button(:id,'importButton')}
      keyword(:management_dd_exports) {management_div.button(:id,'exportButton')}
      keyword(:management_dd_mass_update) {management_div.button(:id,'massUpdateButton')}
      keyword(:management_dd_my_org) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/editOrganization.do')}
      keyword(:management_dd_my_user) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/entityRoleHome.do?entityRoleRef=39.0.2534')}
      keyword(:management_dd_all_users) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/orgAdmin/editUsers.do')}
      keyword(:management_dd_user_act) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/reportLauncher.do?nextAction=orgAdmin/userActivitySummaryReport.do&type=UserActivity&mode=report&name=User Activity')}
      keyword(:management_dd_sec_groups) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/editSecurityGroups.do')}
      keyword(:management_dd_wizard) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/gettingStartedWizard.do')}
      keyword(:management_dd_ncoa) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/ncoa.do')}
      keyword(:management_dd_social_media_finder) {management_div.ul(:id,'manageAdminItems').a(:href,'/prod/socialFinder.do')}
      keyword(:management_dd_estore) {management_div.ul(:id,'manageOnlineItems').a(:href,'/prod/editShoppingCarts.do')}
      keyword(:management_dd_fundraisers) {management_div.ul(:id,'manageOnlineItems').a(:href,'/prod/viewEvents.do')}
      keyword(:management_dd_diy) {management_div.ul(:id,'manageOnlineItems').a(:href,'/prod/ecommManagerHome.do')}
      keyword(:management_dd_sys_defined) {management_div.ul(:id,'manageDatabaseItems').a(:href,'/prod/editUserDefinedFields.do?mode=SYSTEM')}
      keyword(:management_dd_user_defined) {management_div.ul(:id,'manageDatabaseItems').a(:href,'/prod/editUserDefinedFieldsCategories.do?mode=USER')}
      keyword(:management_dd_rel_types) {management_div.ul(:id,'manageDatabaseItems').a(:href,'/prod/editRelationshipTypes.do')}
      keyword(:management_dd_sticky_types) {management_div.ul(:id,'manageDatabaseItems').a(:href,'/prod/editStickyNoteTypes.do')}
      keyword(:management_dd_funds) {management_div.ul(:id,'manageStrategiesItems').a(:href,'/prod/editIntents.do')}
      keyword(:management_dd_campaigns) {management_div.ul(:id,'manageStrategiesItems').a(:href,'/prod/editCampaigns.do')}
      keyword(:management_dd_approaches) {management_div.ul(:id,'manageStrategiesItems').a(:href,'/prod/editApproaches.do')}
      keyword(:management_dd_letters) {management_div.ul(:id,'manageStrategiesItems').a(:href,'/prod/editLetters.do')}
      keyword(:management_dd_goals) {management_div.ul(:id,'manageStrategiesItems').a(:href,'/prod/editDatedGoals.do')}
      keyword(:management_dd_org_prefs) {management_div.div(:id,'manageWorkBetter').a(:id,'manageOrgLink')}
      keyword(:management_dd_user_prefs) {management_div.div(:id,'manageWorkBetter').a(:id,'manageUserLink')}

      #page checking
      keyword(:home_page) {content.div(:id, "mainContent")}
      keyword(:accounts_page) {content.div(:id,"searchPage")}
      keyword(:giving_page) {content.div(:class, "journalGiftPage")}
      keyword(:communications_page) {content.div(:id, "correspondenceCategories")}
      keyword(:queries_page) {content.div(:id,"queryCategoriesPage")}
      keyword(:reports_page_title) {content.h1(:class, "pageTitle")}
      keyword(:management_page) {content.div(:id, "managementPageTop")}

      keyword(:management_my_org) {content.a(:href,'editOrganization.do')}
      keyword(:management_sepa_banking_export) {content.a(:href,'prod/wizard/SEPAExport.do')}
      keyword(:management_standard_exports) {content.a(:href,'SpecialExportCategories.jsp')}


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def home_div
        content.div(:id, "homeTabDropdown")
      end

      def home_quick_links
        home_div.ul(:id, "homeQuickLinks")
      end

      def accounts_div
        content.div(:id,"accountTabDropdown")
      end

      def giving_div
        content.div(:id,"givingTabDropdown")
      end

      def comms_div
        content.div(:id,"communicationTabDropdown")
      end

      def queries_div
        content.div(:id,'queriesTabDropdown')
      end

      def reports_div
        content.div(:id,'reportsTabDropdown')
      end

      def management_div
        content.div(:id,'manageTabDropdown')
      end

    end
  end
end
