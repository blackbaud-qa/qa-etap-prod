module Cukesetaptesting
  module Communications
    class CreatetemplateView < BaseView
      keyword(:comms_cat_list) {comms_categories.ul(:id,'list_categories')}
      keyword(:thank_you_category)  { comms_categories.a(:text, 'Thank You Letters') }
      keyword(:category_letters) {comms_category.ul(:id,'list_templates')}
      keyword(:new_template) {comms_category.a(:text,'New Email or Document Template')}
      keyword(:new_template_content) {comm_template.div(:id,'htmlPreview')}
      keyword(:new_template_name) {comm_template.text_field(:name,'template.name')}
      keyword(:new_template_nav) {comm_template.div(:class,'taskPaneLeft')}
      keyword(:new_template_next) {comm_template.button(:id,'wizardNavigationNext_1')}
      keyword(:new_template_documents) {comm_template.ul(:class,'tabs').li(:id,'tablayoutsdocuments').a}
      keyword(:new_template_simple_business) {comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,'Simple Business Letter').parent.a}
      keyword(:new_template_edit_header) {comm_template.div(:id,'guideHeader')}
      keyword(:new_template_content_editor) {content.iframe(:id,'blockHtmlContents_ifr')}
      keyword(:new_template_insert_image) {new_template_content_editor.img}
      keyword(:new_template_image_menu_insert) {content.span(:text,'Insert image')}
      keyword(:new_template_insert_image_browse) {content.div(:id,'mceu_85').button}
      keyword(:new_file_browser_image) {browser.frameset(:class,'Frame').framesets[1].frameset.frame(:name,'frmUpload').file_field(:name,'NewFile')}
      keyword(:new_file_browser_image_upload) {browser.frameset(:class,'Frame').framesets[1].frameset.frame(:name,'frmUpload').input(:id,'btnUpload')}
      keyword(:new_file_browser_image_upload_spinner) {browser.frameset(:class,'Frame').framesets[1].frameset.frame(:name,'frmUpload').span(:id,'eUploadMessage').img}
      keyword(:file_browser_image) {browser.frameset(:class,'Frame').framesets[1].frame(:name,'frmResourcesList').table(:id,'tableFiles').img(:class,'imagePreview')}
      keyword(:new_template_insert_image_ok) {content.div(:text,'Ok').button}

      keyword(:new_template_quick_formatting) {comm_template.button(:value,'Quick Formatting')}
      keyword(:font_family) {content.div(:id,'mceu_7')}
      keyword(:font_family_comic_sans) {content.div(:id,'mceu_110')}
      keyword(:formats) {content.div(:id,'mceu_8')}
      keyword(:formats_12pt) {content.div(:id,'mceu_130')}
      # keyword(:new_template_footer) {comm_template.div(:id,'guideFooter')}
      keyword(:new_template_footer) {comm_template.div(:class,'block_closing')}
      keyword(:new_template_select) {comm_template.select(:id,'nextMapping')}
      keyword(:new_template_save) {comm_template.a(:text,'Save and')}
      keyword(:new_template_settings) {comm_template.a(:text,'Settings')}
      keyword(:new_template_edit_guide) {content.p(:class,'hoverControls')}
      keyword(:new_template_edit_guide_delete) {new_template_edit_guide.a(:class,'delete').img}

      keyword(:new_template_edit_guide_confirm_yes) {content.button(:value,'Yes')}
      # keyword(:new_template_save) {comm_template.tr(:id,'wizardWorkflowRow_3_taskWorkflow').img}
      keyword(:gen_letters_category) {letter_guide.select(:id,'select.query.category.1')}
      keyword(:gen_letters_query) {letter_guide.select(:id,'select.query.1')}
      keyword(:gen_letters_next) {letter_guide.button(:id,'wizardNavigationNext_1')}
      keyword(:gen_letters_type_pdf) {letter_guide.radio(:id,'pdfExt')}
      keyword(:gen_letters_group_per_entry) {letter_guide.radio(:name,'grouping')}
      keyword(:gen_letters_content) {letter_guide.div(:class,'taskContentRight')}
      keyword(:gen_letters_recieving_download) {letter_guide.radio(:value,'label.download')}
      keyword(:gen_letters_run) {letter_guide.button(:id,'runButton')}
      keyword(:correspondence_cat_receipts) {comms_categories.a(:text,'Receipts')}
      keyword(:new_template_reciept_stub_bottom) {comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,'Receipt w/ Stub (Bottom)').parent.a}
      keyword(:new_template_delete_section) {content.div(:id,'letterGuideClickToEdit').div.p(:class,'hoverControls').a(:class,'delete')}
      keyword(:new_template_add_block) {content.select(:id,'addBlockSelector')}
      keyword(:new_template_body) {content.div(:class,'block_body')}
      keyword(:new_template_text) {content.iframe(:id,'blockHtmlContents_ifr')}
      keyword(:new_template_long_salutation) {new_template_text.a(:text,'Long Salutation')}
      # keyword(:new_template_insert_merge) {content.div(:id,'mceu_26')}
      keyword(:merge_tags_field) {content.div(:class,'mce-reset').iframe.div(:id,'mergeTagsWrapper').select_list(:name,'field')}
      keyword(:merge_tags_insert) {content.div(:class,'mce-reset').iframe.div(:id,'mergeTagsWrapper').button(:id,'insert')}
      keyword(:new_template_font) {content.div(:id,'mceu_7')}
      keyword(:new_template_font_tnr) {content.div(:id,'mceu_91').span}
      keyword(:new_template_font_size) {content.div(:id,'mceu_8')}
      keyword(:new_template_font_12) {content.div(:id,'mceu_102').span}
      keyword(:template_pop_up_update) {content.div(:id,'blockHtmlEdit').parent.parent.div(:class,'popFooter').input(:value,'Update')}
      keyword(:template_save_and_create) {content.select(:id,'nextMapping')}
      keyword(:template_save_and) {content.a(:text,'Save and')}
      keyword(:template_query_category) {content.select(:name,'sourceCategory')}
      keyword(:template_list) {content.ul(:id,'list_templates')}
      keyword(:new_template_query) {content.select(:name,'sourceQuery')}
      keyword(:new_template_next_content) {content.div(:class,'taskContentRight')}
      keyword(:new_template_receipt_next) {content.input(:value,'Next')}
      keyword(:new_template_doc_type_word) {content.radio(:id,'docxExt')}
      keyword(:new_template_grouping_one_per) {content.radio(:value,'label.none')}



      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def comms_categories
        content.div(:id,'correspondenceCategories')
      end

      def comms_category
        content.div(:id,'correspondenceCategory')
      end

      def comm_template
        content.form(:name,'letterGuideWizardForm')
      end

      def letter_guide
        content.form(:name,'letterLauncherWizardForm')
      end
    end
  end
end
