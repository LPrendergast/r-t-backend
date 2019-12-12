class EventsController < ApplicationController

  def create
    event = Event.create(event_params)
    artist = @current_artist
    event.update(artist: artist)
    if event.valid?
      render json: event
    else
      render json:{errors: event.errors.full_message}, status: :not_accepted
    end
  end

  def index
    @events = Event.all
    render json: @events
  end

  private

  def event_params
    params.require(:event).permit(:title, :description,:date, :image_url,:location)
  end

end
