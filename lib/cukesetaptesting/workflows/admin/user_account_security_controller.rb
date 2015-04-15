module Cukesetaptesting
  module Admin
    class UserAccountSecurity < BaseController
      @model = UserAccountSecurityModel
      @view = UserAccountSecurityView

      def enter_current_password(password)
        @view.current_password1.when_present.value = password
      end

      def enter_new_password(password)
        @view.new_password.when_present.value = password
      end

      def enter_confirm_password(password)
        @view.confirm_new_password.when_present.value = password
      end

      def enter_primary_email(email)
        @view.primary_email.when_present.value = email
      end

      def select_security_question(question)
        @view.security_question.when_present.select question
      end

      def enter_security_answer(answer)
        @view.security_answer.when_present.value = answer
      end

      def select_save_button
        @view.save_button.when_present.click
      end

      def select_logout_button
        @view.logout_button.when_present.click
      end

    end
  end
end

