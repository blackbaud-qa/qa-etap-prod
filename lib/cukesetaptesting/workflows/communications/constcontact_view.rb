module Cukesetaptesting
  module Communications
    class ConstcontactView < BaseView
      keyword(:const_cont_title)  {cc_form.h3 }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def cc_form
        content.form(:name, 'ccPreferencesForm')
      end

    end
  end
end
