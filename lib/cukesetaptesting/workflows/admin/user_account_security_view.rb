module Cukesetaptesting
  module Admin
    class UserAccountSecurityView < BaseView

      keyword(:current_password1)   { content.text_field(:id, 'currentPassword') }
      keyword(:new_password)        { content.text_field(:id, 'password') }
      keyword(:confirm_new_password){ content.text_field(:name, 'confirmPassword') }

      keyword(:primary_email)       { content.text_field(:id, 'primaryEmail') }
      keyword(:security_question)   { content.select_list(:id, 'securityQuestionSelect') }
      keyword(:security_answer)     { content.text_field(:id, 'securityAnswer') }

      keyword(:save_button)         { content.button(:value, 'Save')}
      keyword(:logout_button)       { content.button(:value, 'Logout')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
