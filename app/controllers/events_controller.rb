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

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def index
    @events = Event.all
    render json: @events
  end

  def edit
    @event = Event.find(params[:id])
    render json: @events
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      # redirect_to @event
      render json: @event
    else
      render 'edit'
    end
  end


   def destroy
     @event = Event.find(params[:id])
     @event.destroy
     render json: @event
   end


  private

  def event_params
    params.require(:event).permit(:title, :description,:date, :image_url,:location,:latitude,:longitude)
  end

end
