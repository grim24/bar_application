class BarsController < ApplicationController  
  
  def destroy
    Bar.find(params[:id]).destroy
    flash[:success] = "Bar Deleted"
    redirect_to bars_url
  end

  def index
    @bars = Bar.paginate(page: params[:page])
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save
      flash[:success] = "Succesfully added Bar!"
      redirect_to @bar
    else
      render 'new'
    end
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :address)
  end

end
