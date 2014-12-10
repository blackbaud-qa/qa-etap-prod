module Cukesetaptesting
  module Admin
    class Securitygroups < BaseController
      @model = SecuritygroupsModel
      @view = SecuritygroupsView

      def on_security_groups_page?
        return @view.security_groups_title.when_present.text.include? 'Security Groups'
      end
    end
  end
end

