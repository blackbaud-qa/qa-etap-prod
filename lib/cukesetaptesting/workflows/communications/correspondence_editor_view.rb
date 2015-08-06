module Cukesetaptesting
  module Communications
    class CorrespondenceEditorView < BaseView
      keyword(:bold_button) { content.div(:css => 'div[aria-label="Bold"]').button }
      keyword(:italic_button) { content.div(:css => 'div[aria-label="Italic"]').button }
      keyword(:underline_button) { content.div(:css => 'div[aria-label="Underline"]').button }
      keyword(:align_left_button) { content.div(:css => 'div[aria-label="Align left"]').button }
      keyword(:align_center_button) { content.div(:css => 'div[aria-label="Align center"]').button }
      keyword(:align_right_button) { content.div(:css => 'div[aria-label="Align right"]').button }
      keyword(:justify_button) { content.div(:css => 'div[aria-label="Justify"]').button }
      # We'll need to figure out how to dig into the drop-down items (Font Fam, Formats, etc...)
      keyword(:font_family_button) { content.div(:css => 'div[aria-label="Font Family"]').button }
      # The 'Formats' drop-down does not possess an aria-label as of 4/29/2015
      keyword(:text_color_button) { content.div(:css => 'div[aria-label="Text color"]').button }
      keyword(:background_color_button) { content.div(:css => 'div[aria-label="Background color"]').button }
      keyword(:spellcheck_button) { content.div(:css => 'div[aria-label="Spellcheck"]').button }
      keyword(:source_code_button) { content.div(:css => 'div[aria-label="Source code"]').button }
      keyword(:preview_button) { content.div(:css => 'div[aria-label="Preview"]').button }
      keyword(:decrease_indent_button) { content.div(:css => 'div[aria-label="Decrease indent"]').button }
      keyword(:increase_indent_button) { content.div(:css => 'div[aria-label="Increase indent"]').button }
      keyword(:bullet_list_button) { content.div(:css => 'div[aria-label="Bullet list"]').button }
      keyword(:numbered_list_button) { content.div(:css => 'div[aria-label="Numbered list"]').button }
      keyword(:cut_button) { content.div(:css => 'div[aria-label="Cut"]').button }
      keyword(:copy_button) { content.div(:css => 'div[aria-label="Copy"]').button }
      keyword(:paste_button) { content.div(:css => 'div[aria-label="Paste"]').button }
      keyword(:undo_button) { content.div(:css => 'div[aria-label="Undo"]').button }
      keyword(:redo_button) { content.div(:css => 'div[aria-label="Redo"]').button }
      keyword(:clear_formatting_button) { content.div(:css => 'div[aria-label="Clear formatting"]').button }
      keyword(:table_button) { content.div(:css => 'div[aria-label="Table"]').button }
      keyword(:visual_aids_button) { content.div(:css => 'div[aria-label="Visual aids"]').button }
      keyword(:insert_edit_image_button) { content.div(:css => 'div[aria-label="Insert/edit image"]').button }
      keyword(:insert_edit_link_button) { content.div(:css => 'div[aria-label="Insert/edit link"]').button }
      keyword(:anchor_button) { content.div(:css => 'div[aria-label="Anchor"]').button }
      keyword(:special_character_button) { content.div(:css => 'div[aria-label="Special character"]').button }
      keyword(:horizontal_line_button) { content.div(:css => 'div[aria-label="Horizontal line"]').button }
      keyword(:insert_etap_merge_value_button) { content.div(:css => 'div[aria-label="Insert eTapestry Merge Value"]').button }
      keyword(:insert_letter_widget_button) { content.div(:css => 'div[aria-label="Insert Letter Widget"]').button }

      keyword(:yes_notification) { content.button(:value => 'Yes', :index => 0)}
      keyword(:yes_notification1) { content.button(:value => 'Yes', :index => 1)}
      keyword(:yes_notification2) { content.button(:value => 'Yes', :index => 2)}
      keyword(:yes_notification3) { content.button(:value => 'Yes', :index => 3)}
      keyword(:yes_notification4) { content.button(:value => 'Yes', :index => 4)}
      keyword(:no_notification) { content.button(:value => 'No')}

      keyword(:notif) { content.span(:value => 'Notification')}
      keyword (:yes_field) {content.button(:value => 'Yes', :index => 1)}

#      keyword(:upload_button) { browser.frame(:name => 'frmUpload').button(:id => 'btnUpload') }
      keyword(:upload_button) { browser.frame(:name => 'frmUpload').button(:value => 'Upload') }
      keyword(:insert_edit_image_ok_button) { content.div(:text => "Insert/edit image").parent.parent.button(:value => 'Ok') }

      keyword(:browse_for_images_button) { content.div(:id => 'mceu_213-open') }
      keyword(:folder_browse_button) { content.button(:id => 'mceu_163-action') }

      def interact_with_correspondence_section section_name, op
        puts "interact_with_correspondence_section"

        if content.div(:id => "#{section_name}").exists?
          return
        end

#        content.div(:id => "#{section_name}").wait_until_present
        content.div(:id => "#{section_name}").when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:class => "delete").when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:title => "#{op}").when_present.click
        yes_notification.when_present.click
      end

      def delete_guideFooter section_name, op
        puts "delete_guideFooter"

        content.div(:id => "#{section_name}").div(:index => 1).when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:class => "delete").when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:title => "#{op}").when_present.click
        sleep 0.25
        yes_notification.when_present.click
        sleep 0.5

        content.div(:id => "#{section_name}").div(:index => 0).when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:class => "delete").when_present.hover
        content.div(:id => "letterGuideClickToEdit").when_present.a(:title => "#{op}").when_present.click
        sleep 0.25
        yes_notification1.when_present.click
        sleep 0.5
      end


      def custom_image_href name
          browser.frame(:name => 'frmResourcesList').a(:text => "#{name}")
      end

      def select_image_from_disk
        browser.window(:title => 'Resources Browser').use do
          myFile = File.dirname(__FILE__) + '/abc.jpg'
          browser.frame(:name => 'frmUpload').file_field(:id => 'NewFile').when_present.send_keys("#{myFile}")

          upload_button.when_present.click
          (custom_image_href 'abc.jpg').when_present.click
        end

        insert_edit_image_ok_button.when_present.click
      end



      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
