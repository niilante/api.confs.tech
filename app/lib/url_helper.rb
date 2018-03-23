class URLHelper
  def self.fix_url url
    url = url.strip
    if !url.match /^http(s?)\:\/\//
      url = "http://#{url}"
    else
      url
    end
    url.gsub(/\/$/, '')
  end
end
