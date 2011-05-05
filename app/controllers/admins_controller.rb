class AdminsController < ApplicationController
  def index
     @admin = Admin.all
  end

  def show
      @admin = Admin.find(params[:id])
  end

  def new
      @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      redirect_to @admin
    else
      render 'new'
    end
  end
end
