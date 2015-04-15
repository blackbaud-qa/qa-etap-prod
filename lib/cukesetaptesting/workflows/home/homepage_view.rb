module Cukesetaptesting
  module Home
    class HomepageView < BaseView
      keyword(:take_me_to_etap)  { browser.iframe(:id, 'etapContentIframe').link(:id, 'closeMenuOverlayLink') }

      # eTap develop branch as of 4/14/2015 has an additional id='closeMenuOverlayLink' on the 'take me to etap'
      #  link. It wasn't added to the mrsInvisibleWoman code base, as we were at release time.
      #keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:id, 'closeMenuOverlayLink') }
      keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:text, 'Take me to eTapestry!') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

    end
  end
end
