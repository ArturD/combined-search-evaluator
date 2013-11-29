class Page < ActiveRecord::Base

  def self.find_or_new(articleJson)
    page = Page.find_by_url(articleJson[:url])
    if page == nil
      page = Page.create articleJson
    end
    return page
  end
end
