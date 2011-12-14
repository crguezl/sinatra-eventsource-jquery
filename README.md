# jQuery + Sinatra + Streaming

A server-side service outputs a long response using Sinatra's streaming API.
How can the javascript client process this long response as a stream and refresh 
a pre in the HTML page until the whole response has been received?

To run it:

    bundle install
    bundle exec ruby app.rb

Then, try to implement the requested feature. See index.html
