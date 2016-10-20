module Cukesetaptesting
  module Communications
    class CreatetemplateView < BaseView
      attr_reader :advanced_editor
      attr_writer :advanced_editor

      keyword(:comms_cat_list) {comms_categories.ul(:id,'list_categories')}
      keyword(:thank_you_category)  { comms_categories.a(:text, 'Thank You Letters') }
      keyword(:category_letters) {comms_category.ul(:id,'list_templates')}
      keyword(:new_template) {comms_category.a(:text,'New Email or Document Template')}
      keyword(:new_template_content) {comm_template.div(:id,'htmlPreview')}
      keyword(:new_template_name) {comm_template.text_field(:name,'template.name')}
      keyword(:new_template_nav) {comm_template.div(:class,'taskPaneLeft')}
      keyword(:new_template_next) {comm_template.button(:id,'wizardNavigationNext_1')}
      keyword(:new_template_documents) {comm_template.ul(:class,'tabs').li(:id,'tablayoutsdocuments').a}
      keyword(:new_template_newsletters) {comm_template.ul(:class,'tabs').li(:id,'tablayoutsnewsletters').a}
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
      keyword(:quick_formatting_font) {content.select(:class,'styleFont')}
      keyword(:quick_formatting_font_size) {content.select(:class,'styleSize')}
      # keyword(:quick_formatting_update) {content.h1(:text,'Edit Styles').parent.div(:class,'popFooter').button(:value,'Update')}

      keyword(:new_template_quick_formatting) {comm_template.button(:value,'Quick Formatting')}
      keyword(:font_family) { content.div(:css => 'div[aria-label="Font Family"]') }
      # keyword(:font_family) {content.div(:id,'mceu_7')}
      keyword(:font_family_comic_sans) {content.div(:id,'mceu_110')}
      #keyword(:font_format) {content.div(:id, 'mceu_85')}    # Was hoping for an aria-label to use for the font size drop-down, so we could use: :css => 'div[aria-label="Font Family"]') }
      # Instead, we can get an easy handle to the font family, and hopefully, the family
      #  and format/size are always siblings:
      keyword(:font_format) {font_family.parent.div(:index => 1)}
      keyword(:formats) {content.div(:id,'mceu_8')}
      keyword(:formats_12pt) {content.div(:id,'mceu_130')}
      keyword(:new_template_footer) {comm_template.div(:id,'guideFooter')}
      # keyword(:new_template_footer) {comm_template.div(:class,'block_closing')}
      keyword(:new_template_select) {comm_template.select(:id,'nextMapping')}
      keyword(:new_template_save) {comm_template.a(:text,'Save and')}
      keyword(:new_template_settings) {comm_template.a(:text,'Settings')}
      keyword(:new_template_edit_guide) {content.p(:class,'hoverControls')}
      keyword(:new_template_edit_guide_delete) {new_template_edit_guide.a(:class,'delete').img}

      keyword(:subject_text) {content.text_field(:id, 'templateSubject')}

      # Search controls on New correspondence page:
      keyword(:search_text) {content.text_field(:id => 'listSearch_input_categories')}
      keyword(:search_icon) {content.a(:id => 'listSearch_submit_categories')}
      keyword(:search_ok_button) {content.button(:value => 'Ok')}

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
      keyword(:new_template_simple_business_letter) {comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,'Simple Business Letter').parent.a}
      keyword(:new_template_reciept_stub_bottom) {comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,'Receipt w/ Stub (Bottom)').parent.a}
      keyword(:new_template_delete_section) {content.div(:id,'letterGuideClickToEdit').div.p(:class,'hoverControls').a(:class,'delete')}
      keyword(:new_template_add_block) {content.select(:id,'addBlockSelector')}
      keyword(:new_template_body) {content.div(:class,'block_body')}
      keyword(:new_template_long_salutation) {new_template_text.a(:text,'Long Salutation')}
      # keyword(:new_template_insert_merge) {content.div(:id,'mceu_26')}
      keyword(:merge_tags_field) {content.div(:class,'mce-reset').iframe.div(:id,'mergeTagsWrapper').select_list(:name,'field')}
      keyword(:merge_tags_insert) {content.div(:class,'mce-reset').iframe.div(:id,'mergeTagsWrapper').button(:id,'insert')}
      keyword(:template_pop_up_update) {content.div(:id,'blockHtmlEdit').parent.parent.div(:class,'popFooter').input(:value,'Update')}
      keyword(:template_save_and_create) {content.select(:id,'nextMapping')}
      keyword(:template_save_and) {content.a(:text,'Save and')}
      keyword(:template_query_category) {content.select(:name,'sourceCategory')}
      keyword(:template_list) {content.ul(:id,'list_categories')}
      keyword(:new_template_query) {content.select(:name,'sourceQuery')}
      keyword(:new_template_next_content) {content.div(:class,'taskContentRight')}
      keyword(:new_template_receipt_next) {content.input(:value,'Next')}
      keyword(:new_template_doc_type_word) {content.radio(:id,'docxExt')}
      keyword(:new_template_grouping_one_per) {content.radio(:value,'label.none')}

      keyword(:template_advanced_mode) {content.a(:text,'Advanced Modes')}
      keyword(:template_advanced_editor_button) {content.button(:value,'Advanced Editor Mode')}
      keyword(:template_advanced_editor_confirmation0) {content.button(:value => 'Yes', :index => 0)}
      keyword(:template_advanced_editor_confirmation1) {content.button(:value => 'Yes', :index => 1)}
      keyword(:template_advanced_editor_confirmation2) {content.button(:value => 'Yes', :index => 2)}

      keyword(:new_template_next) {content.input(:value,'Next')}
      keyword(:pdf_radio) {content.radio(:value,'enum.filetype.pdf')}
      keyword(:word_radio) {content.radio(:value,'enum.filetype.docx')}
      keyword(:download_docs_radio) {content.radio(:value,'label.download')}
      keyword(:drop_box_docs_radio) {content.radio(:value,'label.dropBox')}

      keyword(:journal_entry_count) {content.td(:text => 'Journal Entries In The Query').parent.td(:index => 1)}

      #newsletter
      keyword(:email_templates) {content.div(:id, 'etap.fieldset.area.1').a(:text, 'Email Templates')}
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


      ## Edit Styles locators: Found under correspondence template --> Quick Formatting button
#      keyword(:text_style_text_font) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div.p.select(:class,'styleFont').option(:text, 'Verdana')}
#      keyword(:text_style_text_size) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div.p.select(:class,'styleFont').option(:text, 'Verdana')}

      def quick_formatting_text_style style_section, font_name
        if style_section == 'Text'
          index = 0
        elsif style_section == 'Title'
          index = 1
        elsif style_section == 'Article Title'
          index = 2
        elsif style_section == 'Article Subtitle'
          index = 3
        elsif style_section == 'Feature Text'
          index = 4
        elsif style_section == 'Secondary Feature Text'
          index = 5
        elsif style_section == 'Table of Contents'
          index = 6
        end

        content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.div(:index => index).div(:index => 0).p.select_list(:class,'styleFont').when_present.click
        content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.div(:index => index).div(:index => 0).p.select(:class,'styleFont').option(:text, '#{font_name}').click
      end

      def quick_formatting_text_size style_section, font_size
        if style_section == 'Text'
          index = 0
        elsif style_section == 'Title'
          index = 1
        elsif style_section == 'Article Title'
          index = 2
        elsif style_section == 'Article Subtitle'
          index = 3
        elsif style_section == 'Feature Text'
          index = 4
        elsif style_section == 'Secondary Feature Text'
          index = 5
        elsif style_section == 'Table of Contents'
          index = 6
        end

        content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.div(:index => index).div(:index => 0).p.select_list(:class,'styleSize').when_present.click
        content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.div(:index => index).div(:index => 0).p.select(:class,'styleSize').option(:text, '#{font_size}').click
      end

      keyword(:article_font_dropdown) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div.p.select(:class,'styleFont').option(:text, 'Verdana')}
      # keyword(:article_font_dropdown) {content.div(:id,'letterGuide').div(:id, 'letterGuideStylesheet').div.divs[2].div(:class,'styleDefinition').select(:class,'styleFont').option('Verdana,Geneva')}


      keyword(:article_font_size_16) {content.div(:id,'letterGuide').select(:class,'styleSize').option(:text, '16pt')}
      # keyword(:quick_formatting_update) {content.iframe(:id, 'etapContentIframe').div(:class, 'popupWindow').div(:class, 'popFooter').input(:id, 'save')}
      keyword(:quick_links_block) {content.div(:class, 'html block_quickLinks guideBlock').h2}
      keyword(:quick_links) {content.div(:id, 'letterGuideClickToEdit').img(:src, '../images/edit16.gif')}

      keyword(:quick_links_href) {content.iframe(:id,'blockHtmlContents_ifr').body(:id, 'guideSidebar').p.a(:href, '#')}

      def new_template_text
        #template_frame
         content.iframe(:id,'blockHtmlContents_ifr')
      end

      def new_template_content_editor_adv
        template_frame
      end

      def template_frame1 advanced
        if advanced
          content.iframe(:id, 'templateHtml_ifr')
        elsif
        content.iframe(:id,'blockHtmlContents_ifr')
        end
      end

      def template_frame
        # content.iframe(:id, 'templateHtml_ifr')
        advanced = browser.iframe(:id, 'templateHtml_ifr').when_present.present?
        # advanced = !content.iframe(:id,'blockHtmlContents_ifr').present?

        if advanced
          content.form(:name,'letterGuideWizardForm').iframe(:id, 'templateHtml_ifr')
        else
          content.iframe(:id,'blockHtmlContents_ifr')
        end
      end

      #select mass email and save
      keyword(:select_mass_email) {content.div(:class,'wizardSaveAndOptions').select(:id,'nextMapping').option(:value,'massEmail')}
      keyword(:save_and) {content.div(:class,'taskPaneLeft').table(:id,'wizardWorkflowTable_taskWorkflow').a(:href,'javascript:Etap.Wizard.wizard.jump(3)')}
      keyword(:advanced_mass) {content.div(:id,'etap.fieldset.table.1').input(:id,'advancedMode')}
      keyword(:preview_pdf) {content.a(:text,'PDF')}
      keyword(:preview_word) {content.a(:text,'Word')}
      keyword(:preview_email) {content.a(:text,'Email')}
      keyword(:preview_email_address) {content.text_field(:id,'emailPreviewList')}
      keyword(:preview_email_send) {content.button(:value,'Send')}
      keyword(:create_journal_contact) {content.checkbox(:id,'createContact')}
      keyword(:journal_contact_subject) {content.text_field(:id,'contactSubject')}
      keyword(:gen_letters_method) {content.select(:id,'contactMethod')}
      keyword(:basic_mass_email) {content.radio(:id,'basicMode')}
      keyword(:send_mass_email_section) {content.a(:text,'Send a Mass Email')}
      keyword(:mass_email_content) {content.div(:class,'taskContentRight')}
      keyword(:mass_email_next) {content.button(:value,'Next')}
      keyword(:mass_update_name) {content.text_field(:id,'replyName')}
      keyword(:mass_update_email) {content.text_field(:id,'replyEmail')}
      keyword(:mass_update_reply) {content.text_field(:id,'confirmationEmail')}
      keyword(:mass_email_create_contact) {content.checkbox(:id,'createContact')}
      keyword(:mass_update_subject) {content.text_field(:id,'contactSubject')}
      keyword(:mass_email_method) {content.select(:id,'contactMethod')}
      keyword(:mass_email_send) {content.button(:value,'Send')}
      keyword(:advanced_mass_email) {content.radio(:id,'advancedMode')}
      keyword(:standard_editor_body) {content.div(:id,'guideContent')}
      keyword(:standard_editor_frame) {content.iframe(:id,'blockHtmlContents_ifr')}
      keyword(:standard_editor_insert_letter) {content.div(:id,'mceu_27').button}
      # keyword(:select_entry_list) {letter_widgets.table.button(:id,'entryList')}
      keyword(:select_entry_list) {letter_widgets.div(:class=>'heading',:text=>'Entry List').parent.parent.button}
      keyword(:letter_widgets_insert) {letter_widgets_content.div(:id,'actionsPanel').button(:value,'Insert')}
      keyword(:standard_editor_entry_list) {standard_editor_frame.input}
      keyword(:letter_widgets_add_column) {letter_widgets_content.a(:text,'Add Another Column')}
      keyword(:letter_widgets_category) {letter_widgets_content.select(:id,'category')}
      keyword(:letter_widgets_field) {letter_widgets_content.select(:id,'field')}
      keyword(:edit_contents_update) {content.h1(:text=>'Edit Contents').parent.div(:class,'popFooter').button(:value,'Update')}
      keyword(:gen_letters_grouping_per_account) {content.radio(:value,'label.account')}
      keyword(:advanced_editor_frame) {content.iframe(:id,'templateHtml_ifr')}
      keyword(:advanced_editor_insert_letter) {content.div(:id,'mceu_32')}
      keyword(:advanced_editor_entry_list) {advanced_editor_frame.input}

      keyword(:quick_format_update_button) {content.div(:id => 'letterGuide').div(:id => 'a1439342522113').div(:id => 'a1439342519186').div(:class => 'popFooter').button(:value => 'Update')}
      keyword(:quick_format_cancel_button) {content.button(:value => 'Cancel')}

      keyword(:select_account_photo_widget) {letter_widgets.div(:class=>'heading',:text=>'Account Photo').parent.parent.button}
      keyword(:correspondence_template_exists) {content.ul(:id, 'list_templates').link(:text, 'Lapsed Donor with Account Photo Widget')}
      # keyword(:custom_account_queries_category) {content.a(:text, 'Custom Account Queries')}
      # keyword(:new_category) {content.a(:href, 'editResultCategory.do')}
      # keyword(:query_category_name_field) {content.text_field(:id, 'name')}
      # keyword(:save_category) {content.a(:href, 'javascript:Etap.Form.submit(document.resultCategoryForm)')}
      # keyword(:new_custom_account_query) {content.a(:text, 'New Custom Account Query')}
      keyword(:custom_account_query_name_field) {content.text_field(:id, 'query.name')}
      # keyword(:add_account_button) {content.button(:value, 'Add Account')}
      # keyword(:search_for) { browser.iframe(:name => 'content').form(:name => 'entitySearchForm').text_field(:id => 'searchString')}
      # keyword(:find_button) {content.button(:value, 'Find')}
      # keyword(:close_button) {content.button(:value, 'Close')}
      keyword(:save_and_button) {content.button(:value, 'Save And')}
      # keyword(:queries_tab) {content.ul(:id, 'menuTabList').a(:href, '/prod/editResultCategories.do')}
      keyword(:create_custom_account_query_link) {content.div(:id, 'tile6').a(:href => /oneOffCustomQuery/)}
      keyword(:view_custom_account_query_link) {content.div(:class, 'tilesetContainer').a(:href => /editCustomAccountQuery/)}
      keyword(:make_necessary_edits_link) {content.a(:href => /letterGuideWizard/)}
      keyword(:subject_field) {content.text_field(:id, 'templateSubject')}
      keyword(:click_save_and_link) {content.a(:href, 'javascript:Etap.Wizard.wizard.jump(3)')}

      keyword(:select_one_off_template) {content.select(:id, 'template')}
      keyword(:generate_ereceipt) {content.input(:id, 'generateAction')}
      keyword(:run_one_off) {content.input(:id, 'runButton')}
      keyword(:generated_receipt_number) {content.label(:text, 'Generated Receipt Number')}
      keyword(:void_ereceipt) {content.input(:id, 'voidAction')}
      keyword(:voided_receipt_number) {content.label(:text, 'Voided Receipt Number')}
      keyword(:voided_status_query) {content.input(:value, 'canceled')}
      keyword(:enable_ereceipts_diy) {content.input(:name, 'generateReceipt')}
      keyword(:disable_ereceipts_diy) {content.input(:id, 'generateReceipt')}
      keyword(:diy_landing_page) {content.div(:id, 'managerPageStats')}
      keyword(:send_conf_email_diy) {content.input(:id, 'notifyDonor')}
      keyword(:conf_email_field_diy) {content.text_field(:id, 'fromEmail')}
      keyword(:conf_email_subject_diy) {content.text_field(:id, 'donorEmailSubject')}
      keyword(:disable_diy_conf_email) {content.input(:id, 'notifyDonor')}
      keyword(:diy_donation_field) {browser.text_field(:id,'gift_amount_simpleField')}

      def one_off_nav_is_fully_visible
        nav = content.div(:id=>'wizardNavigationTags_1')
        browser.wait_until(10){
          nav.style 'opacity' == 1
        }
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def letter_widgets
        content.div(:class=>'mce-title',:text=>'Letter Widgets').parent.parent.iframe
      end

      # No idea why simpler selector don't work, but this is the only one that works I've found so far...
      # For some reason, just getting the iframe itself doesn't do the trick.  Guessing there are other iframes on the page matching at that level.
      def letter_widgets_content
        letter_widgets.div(:class=>'heading',:text=>'Entry List').parent.parent.parent.parent.parent.parent.parent.parent
      end

      def font_name_span(font_name)
        content.span(:text => "#{font_name}")
      end

      def font_size_span(font_size)
        content.span(:text => "#{font_size}")
      end

      def old_email_span(old_email, new_email)
        ourTinyMCE = browser.iframe(:id => 'etapContentIframe').iframe(:id => 'templateHtml_ifr')

        content.execute_script('arguments[0].scrollIntoView();', content.iframe(:id => 'templateHtml_ifr').div(:id,'guideFooter').em(:text => "#{old_email}"))
        #content.iframe(:id => 'templateHtml_ifr').div(:id,'guideFooter').em(:text => 'johndoe@abcorganization.com').parent.text = "myemail@myemail.com"
        p6 = content.iframe(:id => 'templateHtml_ifr').div(:id,'guideFooter').table.tr(:index => 0).td(:index => 0).p(:index => 6)

        old_html = browser.execute_script('return arguments[0].innerHTML;', p6)
        old_html = old_html.gsub(old_email, new_email)
        browser.execute_script("arguments[0].innerHTML = '#{old_html}';", p6)


=begin
        editor_body = ourTinyMCE.body(:id => 'tinymce')
        eml = editor_body.p(:text => 'Executive Director')
        pp eml
        text_body = editor_body.text
        text_body = text_body.gsub(old_email, new_email)
        editor_body.when_present.send_keys [:control, 'a']
        editor_body.when_present.send_keys [:backspace]
        editor_body.send_keys text_body
=end
      end

      #      keyword(:new_template_simple_business_letter) {comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,'Simple Business Letter').parent.a}
      def template_locator template_name
        comm_template.div(:id,'tabContentlayoutsdocuments').label(:text,"#{template_name}").parent.a
      end

      def newsletter_template_locator template_name
#        comm_template.div(:id,'tabContentlayoutsnewsletters').label(:text,"#{template_name}").parent.a
        comm_template.div(:id,'tabContentlayoutsnewsletters').label(:text,"#{template_name}").parent.a
      end

      def category_div
        content.div(:id,'correspondenceCategory')
      end
      def categories_div
        content.div(:id,'correspondenceCategories')
      end
      def delete_category category_name
        delete_link = categories_div.a(:text, "#{category_name}").parent.parent.div(:class, 'actions').a(:class, 'delete')
        delete_link.when_present.click

        confirm_button = categories_div.button(:value, 'Yes')
        confirm_button.when_present.click
      end
      def delete_template template_name
        delete_link = category_div.a(:text, "#{template_name}").parent.parent.div(:class, 'actions').a(:class, 'delete')
        delete_link.when_present.click

        confirm_button = category_div.button(:value, 'Yes')
        confirm_button.when_present.click
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

      def delete_correspondence_template(name)
        content.ul(:id, 'list_templates').link(:text, name).parent.parent.div(:class, 'actions').a(:class, 'delete')
      end

      def home_submenu_link(value)
        content.div(:id, 'homeTabDropdown').a(:href, '/prod/viewUserDropBox.do')
      end

      def drop_box_file_delete_link(value)
        content.li(:id, value).a(:class, 'delete')
      end

    end
  end
end
