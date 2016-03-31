class BarToJsonController < ApplicationController

  def index
    @bars = Bar.paginate(page: params[:page])
    respond_to do |format|
      format.html {  }
      format.json { render json: @bars }
    end
    render json: @bars
  end

  def show
    @bar = Bar.find(params[:id])
    @deals = @bar.deals
    @deal = @bar.deals.build
    render json: @deals 
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address)
  end

end
