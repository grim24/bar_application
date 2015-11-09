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
    @deals = @bar.deals
    @deal = @bar.deals.build
  end

  def new
    @bar = Bar.new
    @deal = @bar.deals.build
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

  def edit
    @bar = Bar.find(params[:id])
  end


  def update
    @bar = Bar.find(params[:id])
    if @bar.update_attributes(bar_params)
      flash[:success] = "Bar updated"
      redirect_to @bar
    else
      render 'edit'
    end
  end


  private
  def bar_params
    params.require(:bar).permit(:name, :address)
  end
end
