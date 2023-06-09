require 'sinatra'
require 'json'



####  GET  #############################################################
get '/' do
  {'info':'Server is up'}.to_json
end
########################################################################


####  GET  #############################################################
get '/about' do
  {"info":"API in Sinatra Ruby."}.to_json
end
########################################################################



####  GET  #############################################################
get '/miror/:obj' do
  {'miror':params['obj']}.to_json
end
########################################################################



####  GET  #############################################################
get '/count/:nmb' do
  count = "1"
  for a in 2..params['nmb'].to_i
    count+= ", " + a.to_s
  end
  { 'mirror': count }.to_json
  
end
########################################################################


####  GET  #############################################################
get '/do/:what?' do |n|
  if n
    {"info":n}.to_json
  else
    'brr'
  end
end
########################################################################



####  GET  #############################################################
get '/openget' do 
  title = params['title']
  info = params['info']
  if title && info
    {'title':title,'info':info}.to_json
  else
    {'info':'maktabch'}.to_json
  end
end
########################################################################




####  GET  #############################################################
get '/go' do 
  title = params['title']
  {'info':'iceice'}.to_json
end
########################################################################



