module Cukesetaptesting
  module Reports
    class Editreportscategory < BaseController
      @model = EditreportscategoryModel
      @view = EditreportscategoryView

      def on_system_page?
        return @view.report_category_title.when_present.text.include? 'Edit Report Category : System'
      end


      #run_existing_report
      def run_report
        @view.run_report_link.when_present.click
      end

      def select_category_base
        @view.category_base.when_present.click
      end

      def select_query_all_constituents
        @view.query_all_constituents.when_present.click
      end


      #export
      def select_download_format_options
        @view.report_format.when_present.click
      end

      def select_download_format format
        @view.report_format.when_present.select format
      end

      def see_test_report?(title)
        @view.page_title.when_present.text.include?(title)
      end

      #verify download methods
      def downloaded_as_pdf?(format)
        @view.downloaded_as_pdf.wait_until_present
        @view.downloaded_as_pdf.when_present.text.include?(format)
      end

      def in_dropbox_as?(format)
        @view.dropbox_list.when_present.text.include?(format)
      end

      def report_generating?
        @view.generating_report.when_present.text.include? 'Test Report'
      end

      def report_sent_as_email?
        @view.report_sent.when_present.text.include? 'inbox'
      end

      #report_load_copy_move_delete






    end
  end
end

