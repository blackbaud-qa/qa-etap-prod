module Cukesetaptesting
  module Admin
    class CartView < BaseView
      keyword(:cart_page_title)  { cart_page.h1(:class,'pageTitle') }

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end

      def cart_page
        content.div(:id,'shoppingCartPage')
      end
    end
  end
end
