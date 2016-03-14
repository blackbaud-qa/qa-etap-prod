module Cukesetaptesting
  module Communications
    class Createtemplate < BaseController
      @model = CreatetemplateModel
      @view = CreatetemplateView

      def set_advanced_editor val
        @view.advanced_editor = val
      end

      def thank_you_category_click
        @view.comms_cat_list.wait_until_present
        @view.thank_you_category.when_present.click
      end

      def correspondence_category_click item
        @view.comms_cat_list.wait_until_present
#        @view.thank_you_category.when_present.click
#keyword(:thank_you_category)  { comms_categories.a(:text, 'Thank You Letters') }
        @view.comms_categories.a(:text, item).when_present.click
      end

      def perform_search cat_name
        @view.search_text.when_present.set cat_name
        @view.search_icon.when_present.click
        sleep 0.5
        if @view.search_ok_button.present?
          @view.search_ok_button.click
        end
      end

      def subject_text
        @view.subject_text
      end

      def new_template_click
        @view.new_template.when_present.click
      end

      def advanced_editor_click
        @view.template_advanced_mode.when_present.click
        @view.template_advanced_editor_button.when_present.click
        begin
          sleep 0.25
          @view.template_advanced_editor_confirmation0.click
        rescue
          begin
            sleep 0.25
            @view.template_advanced_editor_confirmation1.click
          rescue
            sleep 0.25
            @view.template_advanced_editor_confirmation2.click
          end
        end
      end

      def letter_exists?(name)
        # return @view.category_letters.text.include? name
        return @view.category_letters.a(:text,name).present?
      end

      def search_letter_exists?(name)
        return @view.content.a(:text,name).present?
      end

      def letter_click(name)
        @view.category_letters.a(:text,name).when_present.click
      end

      def new_template_settings_click
        sleep 1
        @view.new_template_content.wait_until_present
        @view.new_template_settings.when_present.click
      end

      def new_template_save_click
        @view.new_template_save.when_present.click
      end


      def press_tab
        @view.browser.send_keys :tab
      end

      def new_template_next_click
        @view.new_template_next.when_present.click
      end

      def new_template_documents_click
        puts "new_template_documents_click"
        @view.new_template_documents.when_present.click
      end

      def new_template_newsletters_click
        puts "new_template_newsletters_click"
        @view.new_template_newsletters.when_present.click
      end

      def new_template_simple_business_click
        @view.new_template_simple_business.when_present.click
      end

      def new_template_edit_header_click
        @view.new_template_content.wait_until_present
        @view.new_template_edit_header.when_present.hover
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

      def quick_formatting_update_click
        @view.quick_formatting_update.when_present.click
      end

      def template_update_click title
        @view.content.h1(:text,title).parent.div(:class,'popFooter').button(:value,'Update').when_present.click
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

      def new_template_select_all
        @view.template_frame.when_present.send_keys [:control, 'a']
      end

      def new_template_select_create
        @view.browser.send_keys :home
        @view.new_template_select.when_present.select 'Create Document'
      end

      def gen_letters_set_category_donation_queries
        @view.gen_letters_category.when_present.select 'Donation Queries'
      end

      def gen_letters_set_query_don_last_year
        @view.gen_letters_query.when_present.select 'All Donations Made Last Year - JE'
      end

      def gen_letters_next_click
        sleep 0.5
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

      def delete_existing_templates(name)
        if template_exists? name
          @view.template_list.h4(:text,name).parent.div(:class,'actions').a(:text,'Delete').when_present.click
          @view.new_template_edit_guide_confirm_yes.when_present.click
        end
        #   delete any existing documents here
      end

      def template_exists?(name)
        return @view.template_list.text.include? name
      end

      def new_template_simple_business_letter_click
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.new_template_simple_business_letter)
        @view.new_template_simple_business_letter.when_present.click
      end

      def click_template_name template_name
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.new_template_simple_business_letter)
        template_locator = @view.template_locator template_name
        template_locator.when_present.click
      end

      def click_newsletter_template_name template_name
        template_locator = @view.newsletter_template_locator template_name
#        sleep 1
        @view.browser.execute_script('arguments[0].scrollIntoView();',template_locator)
        template_locator.when_present.click
      end

      def new_template_receipt_stub_bottom_click
        @view.browser.execute_script('arguments[0].scrollIntoView();',@view.new_template_reciept_stub_bottom)
        @view.new_template_reciept_stub_bottom.when_present.click
      end

      def new_template_footer_hover
        @view.new_template_footer.wait_until_present
        sleep 1
        @view.new_template_footer.when_present.hover
        # @view.new_template_edit_guide.wait_until_present
        # @view.new_template_footer.hover
      end

      def new_template_delete_section_click
        @view.new_template_edit_guide.wait_until_present
        @view.new_template_edit_guide_delete.when_present.click
        @view.new_template_edit_guide_confirm_yes.when_present.click
      end

      def new_template_add_block(block)
        @view.new_template_add_block.when_present.select block
      end

      # def new_template_move_stub
      #   @view.new_template_stub_copy.when_present.hover
      #   @view.new_template_edit_guide.wait_until_present
      #   @view.new_template_edit_guide_move.when_present.click
      # end

      def new_template_body_click
        @view.new_template_body.when_present.click
      end

      def new_template_long_salutation_dclick
        @view.new_template_long_salutation.when_present.double_click
        # @view.new_template_insert_merge.when_present.click
      end

      def merge_tags_field_select(selection)
        @view.merge_tags_field.when_present.select selection
      end

      def merge_tags_insert_click
        @view.merge_tags_insert.when_present.click
      end

      def select_all_text
        @view.new_template_text.when_present.click
        @view.new_template_text.send_keys [:control, 'a']
      end

      def select_font_name font_name
        select_all_text
        @view.font_family.when_present.click
        (@view.font_name_span font_name).when_present.click
      end

      def select_font_size font_size
        select_all_text
        @view.font_format.when_present.click
        (@view.font_size_span font_size).when_present.click
      end

      def template_pop_up_update_click
        @view.template_pop_up_update.when_present.click
      end

      def new_template_save_and_create_click
        @view.template_save_and_create.when_present.select 'Create Document'
        @view.template_save_and.when_present.click
      end

      def new_template_donation_queries_click
        @view.template_query_category.when_present.select 'Donation Queries'
      end

      def new_template_category_click category_name
        @view.template_query_category.when_present.select category_name
      end

      def new_template_query_select query_name
#        (@view.new_template_query query_name).when_present.select
        @view.new_template_query.when_present.select query_name
      end

      def new_template_receipt_next_click
        @view.new_template_next_content.wait_until_present
        sleep 1
        @view.new_template_receipt_next.when_present.click
      end

      def new_template_doc_type_select sel
        if sel == 'PDF'
          gen_letters_set_doc_type_pdf
        else
          new_template_doc_type_word_select
        end
      end

      def new_template_doc_type_word_select
        @view.new_template_doc_type_word.when_present.set
      end

      def new_template_grouping_one_per_set
        @view.new_template_grouping_one_per.set
      end

      def download_docs_radio_select
        @view.download_docs_radio.when_present.set
      end

      def drop_box_docs_radio_select
        @view.drop_box_docs_radio.when_present.set
      end

      def update_email_address old_email, new_email
        blah = @view.old_email_span old_email, new_email
      end

      def email_template
        @view.email_templates.when_present.click
      end

      def new_email_document
        @view.new_email_document.when_present.click
      end

      def click_next_on_nav
        @view.nav_next.when_present.click
      end

      def new_pistachio_template
        @view.pistachio_template.when_present.click
      end

      def hover_over_article_block
        @view.first_article_block.wait_until_present
        sleep 1
        @view.first_article_block_hover.hover
      end

      def edit_first_article_block
        @view.first_article_block_edit.when_present.click
      end

      def new_newsletter_set_title(text)
        @view.new_newsletter_content.when_present.send_keys [:command, 'a']
        @view.new_newsletter_content.when_present.send_keys text
      end

      def new_newsletter_content_update
        @view.new_newsletter_content_update.when_present.click
      end

      def font_family_verdana_click
        @view.article_font_dropdown.when_present.click
      end

      def article_font_size_16
        @view.article_font_size_16.when_present.click
      end

      def quick_links_edit
        @view.quick_links_block.hover
        @view.quick_links.when_present.click
      end

      def quick_links_content_update(text)
        # @view.quick_links_href.when_present.send_keys
        @view.quick_links_href.when_present.send_keys text
        @view.quick_links_href.when_present.click
      end

      def save_and_mass_email
        @view.select_mass_email.when_present.click
        @view.save_and.when_present.click
      end

      def select_advanced_mass_email
        @view.advanced_mass.when_present.click
        # @view.browser.radio(:id => 'advancedMode"').set
      end

      def journal_entry_count
        @view.journal_entry_count.text
      end

      def quick_formatting_font_select font
        @view.quick_formatting_font.when_present.select font
      end

      def quick_formatting_font_size_select font
        @view.quick_formatting_font_size.when_present.select font
      end

      def preview_pdf_click
        @view.preview_pdf.when_present.click
      end

      def preview_word_click
        @view.preview_word.when_present.click
      end

      def preview_email_click
        @view.preview_email.when_present.click
      end

      def preview_email_send_click
        @view.preview_email_send.when_present.click
      end

      def create_documents_click(link,name)
        @view.content.a(:text,name).parent.parent.a(:text,link).when_present.click
      end

      def create_journal_contact_set
        @view.create_journal_contact.when_present.set
      end

      def gen_letters_method_select method
        @view.gen_letters_method.when_present.select method
      end

      def basic_mass_email_set
        @view.basic_mass_email.when_present.set
      end

      def send_mass_email_section_click
        @view.send_mass_email_section.when_present.click
      end

      def mass_email_content_wait_for_load
        @view.mass_email_content.wait_until_present
         sleep 1
      end

      def mass_email_next_click
        @view.mass_email_next.when_present.click
      end

      def mass_email_create_contact_set
        @view.mass_email_create_contact.when_present.set
      end

      def mass_email_method_select method
        @view.mass_email_method.when_present.select method
      end

      def mass_email_send_click
        @view.mass_email_send.wait_until_present
        Watir::Wait.until {@view.mass_email_send.enabled?}
        @view.mass_email_send.when_present.click
        sleep 5 #wait for mass email to process
      end

      def advanced_mass_email_set
        @view.advanced_mass_email.when_present.set
      end

      def standard_editor_body_click
        @view.standard_editor_body.when_present.click
      end

      def standard_editor_delete_text
        @view.standard_editor_frame.when_present.send_keys [:control, 'a']
        @view.standard_editor_frame.when_present.send_keys [:delete]
      end

      def standard_editor_insert_letter_click
        @view.standard_editor_insert_letter.when_present.click
      end

      def select_entry_list_click
        @view.select_entry_list.when_present.click
        sleep 2
      end

      def letter_widgets_insert_click
        @view.letter_widgets_insert.when_present.click
        sleep 2
      end

      def standard_editor_entry_list_dclick
        @view.standard_editor_entry_list.when_present.double_click
      end

      def letter_widgets_add_column_click
        @view.letter_widgets_add_column.when_present.click
      end

      def letter_widgets_category_select category
        @view.letter_widgets_category.when_present.select category
      end

      def letter_widgets_field_select field
        @view.letter_widgets_field.when_present.select field
      end

      def edit_contents_update_click
        @view.edit_contents_update.when_present.click
      end

      def gen_letters_set_grouping_per_account
        @view.gen_letters_grouping_per_account.when_present.set
      end

      def advanced_editor_delete_text
        @view.advanced_editor_frame.when_present.send_keys [:control, 'a']
        @view.advanced_editor_frame.when_present.send_keys [:delete]
      end

      def advanced_editor_insert_letter_click
        @view.advanced_editor_insert_letter.when_present.click
      end

      def advanced_editor_entry_list_dclick
        @view.advanced_editor_entry_list.when_present.double_click
      end

      def quick_formatting_text_style style_section, font_name
        @view.quick_formatting_text_style style_section, font_name
      end

      def quick_formatting_text_size style_section, font_size
        @view.quick_formatting_text_size style_section, font_size
      end

      def click_quick_format_update_button
        @view.quick_format_update_button.when_present.click
      end

      def click_quick_format_cancel_button
        @view.quick_format_cancel_button.when_present.click
      end

      def select_account_photo_widget_click
        @view.select_account_photo_widget.when_present.click
        sleep 2
      end

      def delete_correspondence_template(name)
        @view.delete_correspondence_template(name).when_present.click
      end

      def correspondence_template_exists (template)
        @view.correspondence_template_exists(template).present?
      end

      def create_custom_account_query(value)
          sleep 3
          if @view.create_custom_account_query_link.present?
            @view.create_custom_account_query_link.click
          end
          sleep 3
          @view.view_custom_account_query_link.when_present.click
          @view.custom_account_query_name_field.when_present.set value
          @view.save_and_button.when_present.click
      end

      def home_submenu_link_click(value)
        @view.home_submenu_link(value).when_present.click
      end

      def drop_box_file_delete(value)
        @view.drop_box_file_delete_link(value).when_present.click
      end

      def click_to_make_necessary_edits
        @view.make_necessary_edits_link.when_present.click
      end

      def fill_in_subject_line
        @view.subject_field.when_present.set 'Hello From QA'
      end

      def click_save_and
        @view.click_save_and_link.when_present.click
      end

    end
  end
end

