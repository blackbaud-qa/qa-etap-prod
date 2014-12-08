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


    end
  end
end
