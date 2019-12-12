class ApplicationController < ActionController::API
   before_action :set_current_artist

   def issue_token(payload)
       JWT.encode(payload, ENV['RAILS_SECRET'])
   end

   def decode_token(token)
       JWT.decode(token, ENV['RAILS_SECRET'])[0]
   end

   def get_token
       request.headers["Authorization"] || request.headers["Authorisation"]
   end

   def set_current_artist
       token = get_token
       if token
           decoded_token = decode_token(token)
           @current_artist = Artist.find(decoded_token["artist_id"])
       else
           @current_artist = nil
       end
   end

   def logged_in
       !!@current_artist
   end
end
