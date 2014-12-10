module Cukesetaptesting
  module Admin
    class Cart < BaseController
      @model = CartModel
      @view = CartView

    def on_cart_page?
      return @view.cart_page_title.present?
    end
    end
  end
end

