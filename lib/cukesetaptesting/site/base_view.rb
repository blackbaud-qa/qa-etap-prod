module Cukesetaptesting
  class BaseView < Watirmark::Page
    class << self
    end

    def content
      browser.iframe(:name, "content")
    end

    def navbar
      content.ul(:id, "menuTabList")
    end

    def navbar_tab(name)
      navbar.li(:id, name)
    end

    def click_and_confirm_alert(element)
      element.wait_until_present
      browser.without_checkers do
        element.click
        browser.alert.ok if browser.alert.exists?
      end
      browser.run_checkers
    end
  end
end