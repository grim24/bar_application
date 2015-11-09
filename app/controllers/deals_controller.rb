class DealsController < ApplicationController

  def create
    @bar = Bar.find(bar_params[:bar_id])
    @deal = @bar.deals.build(bar_params)
    if @deal.save
      flash[:success] = "Deal Created"
      redirect_to @bar
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
  
  private

  def bar_params
    params.require(:deal).permit(:content, :day, :bar_id)
  end

end
