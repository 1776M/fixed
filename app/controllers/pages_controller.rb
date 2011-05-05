class PagesController < ApplicationController
  def home
      @finance = Finance.new
  end

  def input
  end

end
