class SnacksController < ApplicationController

  def new
    @snack = Snack.new
  end

  def create
    @snack = Snack.new(params[:snack])
    if @snack.save
      flash[:notice] = "Thanks for suggesting!"
      redirect_to snack_path
    else
      flash[:error] = "Problems. We can't get that snack"
      render :new
    end
  end

  def index
    @snacks = Snack.all
  end

  def edit
    @snack = Snack.find(params[:id])
  end

end
