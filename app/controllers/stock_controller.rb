class StockController < ApplicationController
  def index
    @users = User.all
  end
end
