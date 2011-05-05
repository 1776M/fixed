class ClientsController < ApplicationController

  def index
     @client = Client.all
  end

  def show
      @client = Client.find(params[:id])
      @finances = @client.finances
  end

  def new
      @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to @client
    else
      render 'new'
    end
  end

end
