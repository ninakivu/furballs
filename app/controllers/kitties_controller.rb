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
      redirect_to kitty_path(@kitty)
    else
      redirect_to new_kitty_path
    end
  end
 
  def edit
    @kitty = Kitty.find(params[:id])
  end

  def update
    @kitty = Kitty.find(params[:id])
    if @kitty.update(kitty_params)
      redirect_to kitty_path(@kitty)
    else
      redirect_to kitty_edit_path(@kitty)
    end
  end

  def destroy
    @kitty = Kitty.find(params[:id])
    if @kitty.destroy
      redirect_to kitties_path
    else
      redirect_to kitty_path(@kitty)
    end
  end

  private
  def kitty_params
    return params.require(:kitty).permit(:name, :age, :breed, :neutered, :image)
  end
end