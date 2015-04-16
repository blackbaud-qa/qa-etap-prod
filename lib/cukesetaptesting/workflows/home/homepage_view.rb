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

     # This keyword does not work, the error returned is element is not clickable at point (867, 881).
      keyword(:dashboard_tile_remove_recently_viewed_accounts)  {content.div(:id, 'tile200').div(:class, 'controls').img(:src,'images/deleteGray16.png')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

    end
  end
end
