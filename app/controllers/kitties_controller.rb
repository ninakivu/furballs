class KittiesController < ApplicationController
  def index
    @kitties = Kitty.all
  end

  def show
    @kitty = Kitty.find(params[:id])
  end

  def new
    @kitty = Kitty.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
