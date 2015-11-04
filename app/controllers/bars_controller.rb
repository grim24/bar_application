class BarsController < ApplicationController
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
