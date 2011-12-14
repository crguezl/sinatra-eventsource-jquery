require 'sinatra'

set :server, :thin

get '/' do
  send_file "index.html"
end

get '/bottles' do
  content_type "text/event-stream"
  stream do |out|
    1000.times do |i|
      out << "data: #{i} bottle(s) on a wall...\n\n"
      sleep 0.5
    end
  end
end
