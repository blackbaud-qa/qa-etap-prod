module Cukesetaptesting
  module Reports
    class CreatereportView < BaseView
      keyword(:keyword_name)  { browser.text_field(:id, 'element_id') }

      keyword(:report_launcher_title)  {launcher.div(:class,'pageTitle') }
      keyword(:new_category_link)  { content.a(:text,'New Category') }
      keyword(:show_less_detail_link)  { content.a(:text,'Show Less Detail') }
      keyword(:save_category_order_link)  { content.a(:text,'Save Category Order') }
      keyword(:etap_standard_reports_link)  { content.a(:text,'eTapestry Standard Reports') }
      keyword(:etap_benchmark_reports_link)  { content.a(:text,'eTapestry Benchmark Reports') }
      keyword(:system_link)  { content.ul(:id,'list_categories').a(:text,'System') }
      keyword(:new_report_link)  { content.a(:text,'New Report') }
      keyword(:delete_report_category_link)  { content.a(:text,'Delete') }

      keyword(:new_report_name_textfield)  { content.text_field(:id,'definition.name') }
      keyword(:query_category_dropdown)  { content.select_list(:id,'select.query.category.1') }
      keyword(:query_dropdown)  { content.select_list(:id,'select.query.1') }
      keyword(:report_format)  { content.select_list(:id,'modeSelection') }

      keyword(:name_field_link)  { content.a(:text,'Sort Name') }
      keyword(:address_field_link)  { content.a(:text,'Address Lines') }
      keyword(:city_field_link)  { content.a(:text,'City') }
      keyword(:state_field_link)  { content.a(:text,'State/Province') }
      keyword(:postal_code_field_link)  { content.a(:text,'Postal Code') }
      keyword(:sort_name_field_link)  { content.a(:text,'Sort Name') }
      keyword(:date_field_link)  { content.a(:text,'Date') }
      keyword(:fund_field_link)  { content.a(:text,'Fund') }
      keyword(:received_field_link)  { content.a(:text,'Received') }
      keyword(:address_country_multi_link) { content.a(:text,'Full Address with Country (Multi Line)')}
      keyword(:address_country_single_link) { content.a(:text,'Full Address with Country (Single Line)')}
      keyword(:address_without_country_multi_link)  { content.a(:text,'Full Address without Country (Multi Line)')}
      keyword(:address_without_country_single_link) { content.a(:text,'Full Address without Country (Single Line)')}


      keyword(:save_button)  { content.button(:value,'Save') }
      keyword(:save_and_run_button)  { content.button(:value,'Save and Run') }
      keyword(:preview_layout_button)  { content.button(:value,'Preview Layout') }
      keyword(:submit_button)  { content.button(:id,'submitButton') }


      #Verification locators
      keyword(:report_title)  { content.div(:class,'pageTitle')}

      keyword(:field_header_1)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',0)]) }
      keyword(:field_header_2)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',1)]) }
      keyword(:field_header_3)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',2)]) }
      keyword(:field_header_4)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',3)]) }
      keyword(:field_header_5)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',4)]) }
      keyword(:field_header_6)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',5)]) }
      keyword(:field_header_7)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',6)]) }
      keyword(:field_header_8)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',7)]) }
      keyword(:field_header_9)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',8)]) }
      keyword(:field_header_10)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',9)]) }
      keyword(:field_header_11)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',10)]) }
      keyword(:field_header_12)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',11)]) }
      keyword(:field_header_13)  { content.a(:href,%q[javascript:sortTable('etapreporttag1',12)]) }


      def get_delete_button_for_report report_name
        content.a(:text, report_name).when_present.parent.parent.div(:class, "actions").a(:class, "delete")
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
