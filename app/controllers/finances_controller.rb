class FinancesController < ApplicationController
  

  def create
    @finance  = current_client.finances.build(params[:finance])
    if @finance.save
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  def destroy
  end


end