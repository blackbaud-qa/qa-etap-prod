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


    end
  end
end

