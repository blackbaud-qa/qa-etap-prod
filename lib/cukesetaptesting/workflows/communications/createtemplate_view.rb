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

      #newsletter
      keyword(:email_templates) {content.div(:id, 'etap.fieldset.area.1').a(:href, 'displayCategory.do?category.ref=39.0.3299&categoryManagerId=Correspondence')}
      keyword(:new_email_document) {content.a(:href,'wizard/letterGuideWizard.do?categoryRef=39.0.3299')}
      keyword(:nav_next) {content.div(:id, 'wizardNavigationButtons_1').button(:id,'wizardNavigationNext_1')}
      keyword(:pistachio_template) {content.div(:id, 'tabContentlayoutsnewsletters').img(:src, '/prod/letterGuideResource.do?type=thumbnail&guideId=newsletter004')}

      # keyword(:first_article_block) {content.div(:id, 'guideContent')}
      keyword(:first_article_block) {content.div(:id,'htmlPreview')}
      keyword(:first_article_block_hover) {content.div(:id, 'guideContent').div(:class,'html block_article guideBlock')}

      keyword(:first_article_block_edit) {content.div(:id, 'letterGuideClickToEdit').img(:src, '../images/edit16.gif')}
      # keyword(:new_newsletter_content_editor) {content.iframe(:id,'blockHtmlContents_ifr').body(:id, 'guideContent').h2(:text, 'Article Title')}
      keyword(:new_newsletter_title) {content.iframe(:id,'blockHtmlContents_ifr').body(:id,'guideContent').h2}
      keyword(:new_newsletter_content_update) {content.button(:value, 'Update')}
      keyword(:new_newsletter_content) {content.iframe(:id, 'blockHtmlContents_ifr').body(:id, 'guideContent')}

      keyword(:article_font_dropdown) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div.p.select(:class,'styleFont').option(:text, 'Verdana')}
      # keyword(:article_font_dropdown) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div(:class,'styleDefinition').select(:class,'styleFont').option('Verdana,Geneva')}


      keyword(:article_font_size_16) {content.div(:id,'letterGuide').select(:class,'styleSize').option(:text, '16pt')}
      keyword(:quick_formatting_update) {content.iframe(:id, 'etapContentIframe').div(:class, 'popupWindow').div(:class, 'popFooter').input(:id, 'save')}
      keyword(:quick_links_block) {content.div(:class, 'html block_quickLinks guideBlock').h2}
      keyword(:quick_links) {content.div(:id, 'letterGuideClickToEdit').img(:src, '../images/edit16.gif')}

      keyword(:quick_links_href) {content.iframe(:id,'blockHtmlContents_ifr').body(:id, 'guideSidebar').p.a(:href, '#')}

      #select mass email and save
      keyword(:select_mass_email) {content.div(:class,'wizardSaveAndOptions').select(:id,'nextMapping').option(:value,'massEmail')}
      keyword(:save_and) {content.div(:class,'taskPaneLeft').table(:id,'wizardWorkflowTable_taskWorkflow').a(:href,'javascript:Etap.Wizard.wizard.jump(3)')}
      keyword(:advanced_mass) {content.div(:id,'etap.fieldset.table.1').input(:id,'advancedMode')}





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
