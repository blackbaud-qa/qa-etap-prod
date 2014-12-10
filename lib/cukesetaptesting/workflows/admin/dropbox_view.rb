module Cukesetaptesting
  module Admin
    class DropboxView < BaseView
      keyword(:page_title)  { content.div(:class, 'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
