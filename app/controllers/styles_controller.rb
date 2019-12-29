class StylesController < ApplicationController

  def create
    style = Style.create(style_params)
    artist = @current_artist

    style.update(artist: artist)
    if style.valid?
      render json: style
    else
      render json:{errors: style.errors.full_message}, status: :not_accepted
    end
  end
  def show
    @style = Style.find(params[:id])
    render json: @style
  end

  def index
    @styles = Style.all
    render json: @styles
  end

  def edit
    @style = Style.find(params[:id])
    render json: @style
  end

  def update
    @style = Style.find(params[:id])

    if @style.update(style_params)
      # redirect_to @style
      render json: @style
    else
      render 'edit'
    end
  end

   def destroy
     @style = Style.find(params[:id])
     @style.destroy
     render json: @style
   end


  private

  def style_params
    params.require(:style).permit(:website_colour, :background_colour,:font_family,:font_colour)
  end

end
