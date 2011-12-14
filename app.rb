require 'sinatra'

set :server, :thin

get '/' do
  send_file "index.html"
end

get '/bottles' do
  stream do |out|
    1000.times do |i|
      out << "#{i} bottle(s) on a wall...\n"
      sleep 0.5
    end
  end
end
