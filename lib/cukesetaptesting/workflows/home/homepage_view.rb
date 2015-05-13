module Cukesetaptesting
  module Home
    class HomepageView < BaseView
      keyword(:take_me_to_etap)  { browser.iframe(:id, 'etapContentIframe').link(:id, 'closeMenuOverlayLink') }


      @@tilesLookup = Hash[:tileMyMission             => "tile1",
                       :tileMyCalendar              => "tile2",
                       :tileMyOrgCalendar           => "tile3",
                       :tileRecentlyViewedAccounts  => "tile200",
                       :tileQuickLinks              => "tile201",
                       :tileHelpTutorials           => "tile202",
                       :tileRecentQueriesReports    => "tile203",
                       :tileFavorites               => "tile204",
                       :tileSupportResources        => "tile206",
                       :tileTopDonors               => "tile300",
                       :tileCampaignPerformance     => "tile301",
                       :tileApproachPerformance     => "tile302",
                       :tileFundraiserPerformance   => "tile303",
                       :tileRecentGifts             => "tile304",
                       :tileGoalPerformance         => "tile310",
                       :tileChronOfPhilanthropy     => "tile501",
                       :tileGrantSpy                => "tile502",
                       :tileNYTimes                 => "tile503",
                       :tileDMNews                  => "tile504",
                       :tileCNNHeadlines            => "tile601",
                       :tileFoxNewsHeadlines        => "tile602",
                       :tileABCNewsHeadlines        => "tile603",
                       :tileWebpage                 => "tile800-1",
                       :tileMyOrgWebsite            => "tile801",
                       :tileRSSFeed                 => "tile802-1"]

      # eTap develop branch as of 4/14/2015 has an additional id='closeMenuOverlayLink' on the 'take me to etap'
      #  link. It wasn't added to the mrsInvisibleWoman code base, as we were at release time.
      #keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:id, 'closeMenuOverlayLink') }
      keyword(:take_me_to_etap_iframe)  { browser.iframe(:id, 'etapContentIframe').div(:id, 'welcomeDashboard').div(:class, 'popupWindow menuOverlay').div(:class, 'popContent').div(:index => 0).div(:index => 2).h2.link(:text, 'Take me to eTapestry!') }

      #
      # This function should receive one of the symbols used
      #  in the @@tilesLookup hash, such as:
      #   delete_specific_tile :tileTopDonors
      #
      def delete_specific_tile tile_name
        begin
          tile_index = findTileColumnIndex tile_name
          if tile_index == -1
            return false
          end

          (tileControls tile_name, tile_index).a(:index => 1).click
        rescue
          browser.alert.ok
        end

        return true
      end

      # tileControls is used to get the tile controls div, which
      #  gives access to move & delete functionality.
      def tileControls tile_name, tile_index = -1
        tileID = @@tilesLookup[tile_name]

        # If our caller didn't supply a tile_index
        #  then we need to try to get it ourselves
        if tile_index == -1
          tile_index = findTileColumnIndex tile_name
        end

        # We couldn't find the desired tile on the page
        if tile_index == -1
          return -1
        end

        nStrLen = tileID.length
        tileNumber = tileID[4..nStrLen]
        rssID = "rssContainer" + tileNumber

        # The tile_index tells us which column our desired tile was found in. Then, the locators
        #  are slightly different for some of the tiles, so we have to adjust how we move away from the h3 element.
        if tile_index == 0
          columnOneCache = columnOne
          if columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.present?
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.parent.parent.parent.div(:class => 'controls')
          elsif columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.present?
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.present?
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.present?
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.present?
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.parent.parent.parent.div(:class => 'controls')
          else
            columnOneCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').h3.parent.parent.div(:class => 'controls')
          end
        elsif tile_index == 1
          columnTwoCache = columnTwo
          if columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.present?
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.parent.parent.parent.div(:class => 'controls')
          elsif columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.present?
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.present?
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.present?
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.present?
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.parent.parent.parent.div(:class => 'controls')
          else
            columnTwoCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').h3.parent.parent.div(:class => 'controls')
          end
        elsif tile_index == 2
          columnThreeCache = columnThree
          if columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.present?
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => "#{rssID}").h3.parent.parent.parent.div(:class => 'controls')
          elsif columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.present?
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'criteria').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.present?
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'dashboardTile').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.present?
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:id => 'helpAndTutorials').h3.parent.parent.parent.div(:class => 'controls')
          elsif columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.present?
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').div(:class => 'goalPerformance').h3.parent.parent.parent.div(:class => 'controls')
          else
            columnThreeCache.div(:id => "#{tileID}").div(:class => 'fauxFieldset').div(:class => 'fauxFieldsetInner').div(:class => 'dashboardTile').div(:class => 'tileBoundary').div(:class => 'tileBody').h3.parent.parent.div(:class => 'controls')
          end
        end
      end

      def move_specific_tile tile_name
        #TODO: Add code similar to delete logic to move the tile elsewhere.
      end

      def contentIFrame
        browser.iframe(:id, 'etapContentIframe')
      end

      def tileSetContainer
        #contentIFrame.div(:id, 'welcomeDashboard').div(:class => 'ng-scope').div(:id => 'mainContent').div(:class => 'tilesetContainer')
        contentIFrame.div(:id, 'welcomeDashboard').div(:id => 'mainContent').div(:class => 'tilesetContainer')
      end

      def columnOne
      tileSetContainer.div(:class => 'tilesetRow et-col-lg-4 et-col-sm-6 et-col-xs-12').div(:class => 'dashboardDragDropList')
    end

      def columnTwo
        tileSetContainer.div(:class => 'tilesetRightRow et-col-lg-4 et-col-sm-6 et-col-xs-12').div(:class => 'dashboardDragDropList')
      end

      def columnThree
        tileSetContainer.div(:class => 'tilesetRightRow et-col-lg-4 et-col-sm-12').div(:class => 'dashboardDragDropList')
      end

      # This can be used as a rudimentary way of telling if your
      #  tile is not displayed on the home page, by checking if
      #  the return is -1. Otherwise, it tells you the column
      #  number that contains your tile.
      def findTileColumnIndex tile_name
        tileID = @@tilesLookup[tile_name]

        if columnOne.div(:id => "#{tileID}").present?
          return 0
        elsif columnTwo.div(:id => "#{tileID}").present?
          return 1
        elsif columnThree.div(:id => "#{tileID}").present?
          return 2
        else
          return -1
        end
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
