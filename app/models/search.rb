require 'net/http'
require 'json'


url = "https://www.mediawiki.org/w/api.php?action=opensearch&search=the"
uri = URI(url)
results = Net::HTTP.get(uri)
JSON.parse(results)
puts results