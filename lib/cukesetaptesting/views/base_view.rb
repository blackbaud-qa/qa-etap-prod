module Cukesetaptesting
  class BaseView < Watirmark::Page
    navigation_keyword(:save_button)  {content.button(:value, 'Save And')}

    def toolbar
      Page.browser.div(:name, "toolbar")
    end

    def navbar
      Page.browser.frame(:name, "content").ul(:id, "menuTabList")
    end

    def content
      Page.browser.frame(:name, "content")
    end

    def content_label(name)
      content.td(:text, name).nextsibling
    end

    def home(model)
    end
  end
end