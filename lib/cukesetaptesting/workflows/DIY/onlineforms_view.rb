module Cukesetaptesting
  module DIY
    class OnlineformsView < BaseView
      keyword(:online_forms_title)  { forms.h2(:id,'title') }
      keyword(:management_page_diy) { content.link(:href, 'ecommManagerHome.do')}
      keyword(:create_a_page) { content.div(:id, 'newPageButtonM')}
      keyword(:choose_online_giving_page) { content.div(:id, 'donateButtonM')}
      keyword(:choose_embedded_template) { content.div(:id, 'embeddiv')}
      keyword(:template_next) { content.input(:id, 'templateNext')}
      keyword(:diy_settings_name) { content.text_field(:id, 'name')}
      keyword(:diy_settings_title) { content.text_field(:id, 'title')}
      keyword(:diy_settings_url) { content.text_field(:id, 'publishingName')}
      keyword(:diy_settings_from_address) { content.text_field(:id, 'fromEmail')}
      keyword(:diy_settings_from_subject) { content.text_field(:id, 'donorEmailSubject')}
      keyword(:diy_settings_to_address) { content.text_field(:id, 'notifyEmail')}
      keyword(:diy_settings_to_subject) { content.text_field(:id, 'notifyEmailSubject')}
      keyword(:fund_link) { content.link(:class, 'fundsSelect')}
      keyword(:funds_list) { content.div(:id, 'availableFunds')}
      keyword(:fund_update) { content.p(:id, 'fundSelectInfo').parent.parent.input(:id, 'save')}
      keyword(:settings_submit) { content.input(:id, 'optionsNext')}
      keyword(:go_live_button) { content.div(:id, 'goLiveButtonM')}
      keyword(:go_live_confirm) { content.input(:id, 'publishConfirm')}

      def click_on_fund(fund)
        funds_list.link(:text, fund)
      end
      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def forms
        content.div(:id,'ecommStyling')
      end
    end
  end
end
