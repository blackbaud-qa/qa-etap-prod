module Cukesetaptesting
  module Account
    class Profile < BaseController
      @model = ProfileModel
      @view = ProfileView

    def journal_link_click
      @view.journal_link.when_present.click
    end

    def constit_name_exists?(name)
      return @view.constit_summary.when_present.text.include? name
    end

    def on_home_page?
      return @view.home_page_class.present?
    end

    def on_personas_page?
      return @view.persona_page.present?
    end

      def on_relationships_page?
        return @view.relationships_page.present?
      end

      def on_journal_page?
        return @view.journal_page.present?
      end

      def on_other_page?
        return @view.other_page.present?
      end

      def on_defined_fields_page?
        return @view.defined_fields_page.present?
      end

      def click_select_tiles_and_layout
        @view.select_tiles_and_layout_link.click
      end

      def choose_three_equal_columns_layout
        @view.three_equal_columns_layout.set
      end

      def click_save_button
        @view.save_button.click
      end

      def small_columns_size
        left = @view.left_small_columns.size
        right = @view.right_small_columns.size
        return left + right
      end

      def choose_soft_credit_summary
        @view.soft_credit_summary_checkbox.set(true)
      end

      def soft_credit_summary_tile_exists?
        return @view.soft_credit_summary_tile.when_present.exists?
      end

    end
  end
end

