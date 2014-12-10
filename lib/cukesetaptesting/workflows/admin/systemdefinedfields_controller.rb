module Cukesetaptesting
  module Admin
    class Systemdefinedfields < BaseController
      @model = SystemdefinedfieldsModel
      @view = SystemdefinedfieldsView

      def on_system_defined_page?
        return @view.sys_def_fields_title.when_present.text.include? 'System Defined Fields'
      end
    end
  end
end

