require 'net/http'

if ARGV[0] == 'miror'
  url = URI.parse('http://127.0.0.1:4567/miror/'+ARGV[1])
elsif ARGV[0] == 'count'
  url = URI.parse('http://127.0.0.1:4567/count/'+ARGV[1])
elsif ARGV[0] == 'do'
  url = URI.parse('http://127.0.0.1:4567/do/'+ARGV[1])
else
  url = URI.parse('http://127.0.0.1:4567/'+ARGV[0])
end


http = Net::HTTP.new(url.host, url.port)
response = http.get(url.request_uri)

puts response.body