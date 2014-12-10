module Cukesetaptesting
  module Admin
    class Users < BaseController
      @model = UsersModel
      @view = UsersView

      def on_users_page?
        return @view.users_title.when_present.text.include? 'Users'
      end
    end
  end
end

