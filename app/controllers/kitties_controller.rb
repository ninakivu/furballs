class KittiesController < ApplicationController
  def index
    @kitties = Kitty.all
  end

  def show
    @kitty = Kitty.find(params[:id])
  end

  def new
    # @kitty is to build the form for a new Kitty object
    @kitty = Kitty.new
  end

  def create
    @kitty = Kitty.new(kitty_params)
    if @kitty.save
      redirect_to "/kitties/#{@kitty.id}"
    else
      redirect_to "/kitties/new"
    end
  end

  def edit
    @kitty = Kitty.find(params[:id])
  end

  def update
    @kitty = Kitty.find(params[:id])
    if @kitty.update(kitty_params)
      redirect_to "/kitties/#{@kitty.id}"
    else
      redirect_to "/kitties/#{@kitty.id}/edit"
    end
  end

  def destroy
  end

  private
  def kitty_params
    return params.require(:kitty).permit(:name, :age, :breed, :neutered, :image)
  end
end