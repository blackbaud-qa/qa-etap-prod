module Cukesetaptesting
  module Admin
    class LandingView < BaseView
      keyword(:logout_frame) {browser.iframe(:name, "content")}
      #keyword(:accounts) {logout_frame.element(:css=> '#accountTab a')}

      keyword(:logout_link) {content.link(:text, 'Logout')}

      #nav bar
      keyword(:home_tab) {navbar_tab('homeTab').link(:class, "menuTabText")}
      keyword(:home_dd) {navbar_tab('homeTab').img(:class, "menuTabButton")}

      keyword(:accounts_tab) {navbar_tab('accountTab').link(:class, "menuTabText")}
      keyword(:accounts_dd) {navbar_tab('accountTab').img(:class, "menuTabButton")}

      keyword(:giving_tab) {navbar_tab('givingTab').link(:class, "menuTabText")}
      keyword(:giving_dd) {navbar_tab('givingTab').img(:class, "menuTabButton")}

      keyword(:communications_tab) {navbar_tab('communicationTab').link(:class, "menuTabText")}
      keyword(:communications_dd) {navbar_tab('communicationTab').img(:class, "menuTabButton")}

      keyword(:queries_tab) {navbar_tab('queriesTab').link(:class, "menuTabText")}
      keyword(:queries_dd) {navbar_tab('queriesTab').img(:class, "menuTabButton")}

      keyword(:reports_tab) {navbar_tab('reportsTab').link(:class, "menuTabText")}
      keyword(:reports_dd) {navbar_tab('reportsTab').img(:class, "menuTabButton")}

      keyword(:management_tab) {navbar_tab('manageTab').link(:class, "menuTabText")}
      keyword(:management_dd) {navbar_tab('manageTab').img(:class, "menuTabButton")}

      keyword(:logout_frame) {browser.iframe(:name, "content")}
      keyword(:accounts) {logout_frame.element(:css=> '#accountTab a')}

      #nav bar home dropdown
      keyword(:home_dd_go_home) {home_div.li(:id, "dashboardButton")}
      keyword(:home_dd_manage_preferences) {home_div.li(:id, "preferencesButton")}
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
      keyword(:accounts_dd_find_account) {accounts_div.li(:id,"findAccountButton")}
      keyword(:accounts_dd_add_account) {accounts_div.li(:id,"addAccountButton")}

      #nav bar giving dropdown
      keyword(:giving_dd_add_gift) {giving_div.li(:id,"addGiftButton")}
      keyword(:giving_dd_import_gifts) {giving_div.li(:id,"preferencesButton")}
      keyword(:giving_dd_giving_dynamics) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=givingDynamicsSummaryReport.do&type=GivingDynamics&mode=report&name=Giving%20Dynamics%20Report")}
      keyword(:giving_dd_top_donor) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=topDonorReport.do&type=TopDonor&mode=report&name=Top%20Donor%20Report")}
      keyword(:giving_dd_pledge_report) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=pledgeReport.do&mode=report&type=PledgeReport&name=Pledge%20Report")}
      keyword(:giving_dd_fund_activity) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=/activitySummaryReport.do&type=fund&mode=report&name=Fund%20Activity%20Summary")}
      keyword(:giving_dd_donor_cash) {giving_div.a(:href,"/prod/reportLauncher.do?nextAction=donorCashProjectionReport.do&mode=report&type=DonorCashProjection&name=Donor%20Cash%20Projection%20Report")}
      keyword(:giving_dd_prospect_research) {giving_div.a(:href,"/prod/ProspectResearch.jsp")}
      keyword(:giving_dd_planned_giving) {giving_div.a(:href,"/prod/launchPlannedGiving.do")}
      keyword(:giving_dd_cultivation_tools) {giving_div.a(:href,"/prod/CultivationTools.jsp")}

      #nav bar communications dropdown
      keyword(:communications_dd_manage_comms) {comms_div.li(:id,'manageCommButton')}
      keyword(:communications_add_category) {comms_div.li(:id,'addNewCategoryButton')}
      keyword(:communications_constant_contact) {comms_div.div(:id, 'commConstantContact').a(:href,'ccPreferences.do?initialSetup=true')}

      #nav bar queries dropdown
      keyword(:queries_dd_manage) {queries_div.li(:id,'manageQueryButton')}
      keyword(:queries_dd_add_category) {queries_div.li(:id,'addNewCategoryButton')}
      keyword(:queries_dd_base) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2735')}
      keyword(:queries_dd_journal_entry) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2791')}
      keyword(:queries_dd_constit_journal_entry) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2792')}
      keyword(:queries_dd_lybunt) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2793')}
      keyword(:queries_dd_pledges_payments) {queries_div.ul(:id,'queryCategories1').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2821')}
      keyword(:queries_dd_processed_trans) {queries_div.ul(:id,'queryCategories2').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2822')}
      keyword(:queries_dd_security) {queries_div.ul(:id,'queryCategories2').a(:href,'/prod/editResultCategory.do?categoryRef=39.0.2481')}

      #nav bar reports dropdown
      keyword(:reports_dd_manage_reports) {reports_div.li(:id,'manageReportButton')}
      keyword(:reports_dd_relationship_filters) {reports_div.li(:id,'accountQueryButton')}
      keyword(:reports_dd_system) {reports_div.ul(:id,'reportCategories1').a(:href,'/prod/editReportCategory.do?categoryRef=39.0.2846')}
      keyword(:reports_dd_top_donor) {reports_div.ul(:id,'topReports1').a(:href,'/prod/reportLauncher.do?nextAction=topDonorReport.do&type=TopDonor&mode=report&name=Top%20Donor%20Report')}
      keyword(:reports_dd_journal) {reports_div.ul(:id,'topReports1').a(:href,'/prod/reportLauncher.do?nextAction=journalEntryListReport.do&mode=report&type=JournalEntryList&name=Journal%20Entry%20List')}
      keyword(:reports_dd_recency) {reports_div.ul(:id,'topReports1').a(:href,'/prod/reportLauncher.do?nextAction=recencyReport.do&type=RecencyReport&mode=report&name=Recency%20Report')}
      keyword(:reports_dd_shared) {reports_div.ul(:id,'topReports2').a(:href,'/prod/reportLauncher.do?nextAction=/sharedLinksReport.do&type=sharedLinks&mode=report&name=Shared%20Links%20Report')}
      keyword(:reports_dd_aging_pledge) {reports_div.ul(:id,'topReports2').a(:href,'/prod/reportLauncher.do?nextAction=agingPledgeSummaryReport.do&type=AgingPledgeSummary&mode=report&name=Aging%20Pledge%20Summary')}
      keyword(:reports_dd_standard) {reports_div.ul(:id,'reportStandard').a(:href,'/prod/SpecialReportCategories.jsp')}
      keyword(:reports_dd_benchmark) {reports_div.ul(:id,'reportStandard').a(:href,'/prod/viewCrossDBReports.do')}

      #page checking
      keyword(:home_page) {content.div(:id, "mainContent")}
      keyword(:accounts_page) {content.div(:id,"searchPage")}
      keyword(:giving_page) {content.div(:class, "journalGiftPage")}
      keyword(:communications_page) {content.div(:id, "correspondenceCategories")}
      keyword(:queries_page) {content.div(:id,"queryCategoriesPage")}
      keyword(:reports_page_title) {content.h1(:class, "pageTitle")}
      keyword(:management_page) {content.div(:id, "managementPageTop")}


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

    end
  end
end
