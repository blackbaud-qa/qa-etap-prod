module Cukesetaptesting
  module Communications
    class Createtemplate < BaseController
      @model = CreatetemplateModel
      @view = CreatetemplateView

      def thank_you_category_click
        @view.thank_you_category.when_present.click
      end

      def new_template_click
        @view.new_template.when_present.click
      end

      def letter_exists?(name)
        return @view.category_letters.text.include? name
      end

      def letter_click(name)
        @view.category_letters.a(:text,name).when_present.click
      end

      def new_template_settings_click
        @view.new_template_settings.when_present.click
      end

      def new_template_save_click
        @view.new_template_save.when_present.click
      end


      def press_tab
        @view.browser.send_keys :tab
      end

      def new_template_next_click
        @view.new_template_nav.when_present.click
        @view.browser.send_keys :home
        @view.new_template_next.when_present.click
      end

      def new_template_documents_click
        @view.new_template_documents.when_present.click
      end

      def new_template_simple_business_click
        @view.new_template_simple_business.when_present.click
      end

      def new_template_edit_header_click
        @view.new_template_edit_header.when_present.click
      end

      def new_template_insert_image_dclick
         @view.new_template_insert_image.when_present.right_click
         @view.new_template_image_menu_insert.when_present.click
      end

      def new_template_insert_image_browse_click
        @view.new_template_insert_image_browse.when_present.click
      end

      def set_file_browser_image(path)
        with_modal_dialog do
          @view.new_file_browser_image.set(path)
        end
      end

      def file_browser_image_upload_click
        with_modal_dialog do
          @view.new_file_browser_image_upload.click
        end
      end

      def file_browser_image_click
        with_modal_dialog do
          @view.new_file_browser_image_upload_spinner.wait_while_present
          @view.file_browser_image.click
        end
      end

      def new_template_insert_image_ok_click
        @view.new_template_insert_image_ok.when_present.click
      end

      def new_template_update_image_click
       #Problem with watir webdriver in finding the 'Update' button.  This performs the same action with key commands.
       #Not ideal, so may revisit this later.
       @view.browser.send_keys :tab
       @view.browser.send_keys :return
      end

      def new_template_quick_formatting_click
        @view.new_template_quick_formatting.when_present.click
      end

      def font_family_comic_sans_click
        @view.font_family.when_present.click
        @view.font_family_comic_sans.when_present.click
      end

      def formats_12pt_click
        @view.formats.when_present.click
        @view.formats_12pt.when_present.click
      end

      def new_template_footer_click
        @view.new_template_footer.when_present.click
      end

      def new_template_set_content(text)
        @view.new_template_content_editor.when_present.send_keys [:control, 'a']
        @view.new_template_content_editor.when_present.send_keys text
        @view.new_template_content_editor.when_present.click
      end

      def new_template_select_create
        @view.browser.send_keys :home
        @view.new_template_select.when_present.select 'Create Document'
      end

      def gen_letters_set_category_donation_queries
        @view.gen_letters_category.when_present.select 'Donation Queries'
      end

      def gen_letters_set_query_don_last_year
        @view.gen_letters_query.when_present.select 'Donations Made Last Year - JE'
      end

      def gen_letters_next_click
        @view.gen_letters_next.when_present.click
      end

      def gen_letters_set_doc_type_pdf
        @view.gen_letters_type_pdf.when_present.set
      end

      def gen_letters_set_grouping_per_entry
        @view.gen_letters_group_per_entry.when_present.set
      end

      def gen_letters_wait_for_load
        @view.gen_letters_content.wait_until_present
      end

      def gen_letters_set_recieving_download
        @view.gen_letters_recieving_download.when_present.set
      end

      def gen_letters_run_enabled?
        return @view.gen_letters_run.enabled?
      end

      def gen_letters_run_click
        @view.gen_letters_run.when_present.click
      end

      def correspondence_cat_receipts_click
        @view.correspondence_cat_receipts.when_present.click
      end

      def new_template_receipt_stub_bottom_click
        @view.new_template_reciept_stub_bottom.when_present.click
      end

      def new_template_footer_hover
        @view.new_template_footer.hover
      end

      def new_template_delete_section_click
        @view.new_template_delete_section.when_present.click
      end
    end
  end
end

