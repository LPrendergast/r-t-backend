class ArtistsController < ApplicationController

  def create
     @artist = Artist.create(artist_params)
     if @artist.valid?
       render json: { artist: ArtistSerializer.new(@artist), token: issue_token(artist_id: @artist.id) }, status: :created
     else
       render json: { error: 'failed to create artist' }, status: :not_acceptable
     end
  end

 def login
   artist = Artist.find_by(username: login_params[:username])
   if artist &.authenticate(login_params[:password])
     render json: { artist: ArtistSerializer.new(artist), token: issue_token(artist_id: artist.id) }
   else
     render json: { errors: ['Username or password incorrect'] }, status: :not_accepted
   end
 end

 def show
   @artist = Artist.find(params[:id])
   render json: @artist
 end

 def index
   @artists = Artist.all
   render json: @artists
 end

 def validate
   if logged_in
     render json: { artist: ArtistSerializer.new(@current_artist), token: issue_token(artist_id: @current_artist.id) }
   else
     render json: { errors: ['Invalid token'] }, status: :not_accepted
   end
 end

 def edit
   @artist = Artist.find(params[:id])
 end

 def update
   @artist = Article.find(params[:id])

   if @artist.update(event_params)
     redirect_to @artist
     render json: @artist
   else
     render 'edit'
   end
 end

 def destroy
   @artist = Artist.find(params[:id])
   @artist.destroy
   render json: @artist
 end

 private

 def artist_params
   params.require(:artist).permit(:username, :password, :password_confirmation,:portfolio,:image_url,:description,:artist_name)
 end

 def login_params
   params.require(:artist).permit(:username, :password)
 end
end
