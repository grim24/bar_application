class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end
  
  def contact 
  end
  
  def json
    @bars = Bar.paginate(page: params[:page])
    render json: @bars
  end
end
