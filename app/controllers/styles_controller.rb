class StylesController < ApplicationController
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
    params.require(:Style).permit(:website_colour, :background_colour,:font_family,:font_colour)
  end

end
