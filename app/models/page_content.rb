class PageContent < ApplicationRecord

  def parse_url(url)
    mechanize = Mechanize.new
    page = mechanize.get(url)
    links = []
    page.xpath("//a").each do |a|
      links << a.attr('href')
    end
    self.links = links.join(", ")
    self.h1_texts = page.xpath("//h1").map(&:text).join(", ")
    self.h2_texts = page.xpath("//h2").map(&:text).join(", ")
    self.h3_texts = page.xpath("//h3").map(&:text).join(", ")
  end
end
