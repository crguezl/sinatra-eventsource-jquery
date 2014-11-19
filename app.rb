require 'sinatra'
require 'pp'

set :server, :thin

get '/' do
  send_file "index.html"
end

get '/bottles' do
  content_type "text/event-stream"
  stream do |out|
    0.upto(50) do |i|
      out << "id: #{i}\n"
      out << "data: #{i} bottle(s) on a wall...\n\n"
      sleep 0.3
    end
    out << "data: CLOSE\n\n"
  end
end
