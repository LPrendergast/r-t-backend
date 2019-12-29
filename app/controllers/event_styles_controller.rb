class EventStylesController < ApplicationController
  def create
    style = EventStyle.create(eventStyle_params)
    event = Event.find(params[:event_id])
    
    style.update(event: event)
    if style.valid?
      render json: style
    else
      render json:{errors: style.errors.full_message}, status: :not_accepted
    end
  end
  def show
    @eventStyle = EventStyle.find(params[:id])
    render json: @eventStyle
  end

  def index
    @eventStyles = EventStyle.all
    render json: @eventStyles
  end

  def edit
    @eventStyle = EventStyle.find(params[:id])
    render json: @eventStyle
  end

  def update
    @eventStyle = EventStyle.find(params[:id])
    if @eventStyle.update(eventStyle_params)
      # redirect_to @style
      render json: @eventStyle
    else
      render 'edit'
    end
  end

   def destroy
     @eventStyle = EventStyle.find(params[:id])
     @eventStyle.destroy
     render json: @eventStyle
   end


  private

  def eventStyle_params
    params.require(:event_style).permit(:website_colour, :background_colour,:font_family,:font_colour,:event_id)
  end
end
