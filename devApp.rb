require 'json'
require 'sinatra'



get '/' do
  {'info':'brr'}.to_json
end