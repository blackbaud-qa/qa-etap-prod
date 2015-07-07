require 'selenium-webdriver'

module Cukesetaptesting
  module Communications
    class CorrespondenceEditor < BaseController
      @model = CorrespondenceEditorModel
      @view = CorrespondenceEditorView

      def click_yes
        @view.yes_notification.when_present.click
      end

      def click_no
        @view.no_notification.when_present.click
      end

      def click_image_button
        @view.insert_edit_image_button.when_present.click
      end

      def interact_with_correspondence_section section_name, op
#        @view.interact_with_correspondence_section section_name, op
        @view.delete_guideFooter section_name, op
      end

      def select_image_from_disk
        @view.select_image_from_disk
      end

      def click_folder_browse_button
        @view.folder_browse_button.when_present.click
      end

    end
  end
end

