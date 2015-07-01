module Cukesetaptesting
  module Home
    class HomepageView < BaseView
      keyword(:take_me_to_etap)  { browser.iframe(:id, 'etapContentIframe').link(:id, 'closeMenuOverlayLink') }

      # eTap develop branch as of 4/14/2015 has an additional id='closeMenuOverlayLink' on the 'take me to etap'
      #  link. It wasn't added to the mrsInvisibleWoman code base, as we were at release time.
      #keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:id, 'closeMenuOverlayLink') }
      keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:text, 'Take me to eTapestry!') }

      keyword(:dashboard_tile_recently_viewed_accounts_checkbox)  {content.div(:id, 'etap.fieldset.table.2').checkbox(:value,'200')}
      keyword(:dashboard_tile_recently_viewed_accounts_tile)  {content.div(:class, 'tilesetRightRow et-col-lg-6 et-col-sm-6  et-col-xs-12').div(:id, 'tile200')}
      keyword(:two_equal_column_layout) {content.radio(:value, '1')}
      keyword(:left_column) {content.divs(:class, 'tilesetRow et-col-lg-6')}
      keyword(:right_column) {content.divs(:class, 'tilesetRightRow et-col-lg-6')}
      keyword(:date_on_campaign_performance_tile) {content.div(:id, 'tile301').select(:id, 'campaignDateRange')}
      keyword(:set_camp_tile_start_date)  {content.div(:id, 'tile301').text_field(:name, 'campaignCustomStartDate')}
      keyword(:set_camp_tile_end_date)  {content.div(:id, 'tile301').text_field(:name, 'campaignCustomEndDate')}
      keyword(:update_camp_performance_tile)  {content.div(:id, 'tile301').button(:value, 'Update')}
      keyword(:perform_full_report_results) {content.div(:id, 'dashboardDetailReport').td(:class, 'pageResults')}




     # This keyword does not work, the error returned is element is not clickable at point (867, 881).
      keyword(:dashboard_tile_remove_recently_viewed_accounts)  {content.div(:id, 'tile200').div(:class, 'controls').img(:src,'images/deleteGray16.png')}

      def link_on_campaign_performance_tile(value)
        content.div(:id, 'tile301').a(:text, value)
      end

      def camp_perform_date_range_label
        browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:id, 'mainContent').div(:class, 'tilesetContainer').div(:class, 'tilesetRow et-col-lg-6 et-col-sm-6 et-col-xs-12').div(:id,'dragDropList0').div(:id, 'tile301').div(:id, 'fauxFieldset').div(:class, 'fauxFieldsetInner').div(id, 'etap.fieldset.area.1').div(:class, 'tileBoundary').div(:class, 'tileBody').div(:class, 'thermometerTile').div(:class, 'data activity').div(:id, 'etapreporttag1_outerdiv').table(:id, 'etapreporttag1').tr(:class, 'current reportHeading').td(:class, 'name')
      end


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

    end
  end
end
