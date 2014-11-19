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

  end
end