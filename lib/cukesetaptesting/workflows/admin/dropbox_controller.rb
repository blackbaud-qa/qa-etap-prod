module Cukesetaptesting
  module Admin
    class Dropbox < BaseController
      @model = DropboxModel
      @view = DropboxView

      def on_dropbox_page?
        @view.page_title.when_present.text.include? "My Drop Box"
      end
    end
  end
end

