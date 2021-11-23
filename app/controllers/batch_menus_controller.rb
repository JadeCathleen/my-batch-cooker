class BatchMenusController < ApplicationController

  def new
    @batch_menu = Batch_menu.new
  end

  def show
    @batch_menu = Batch_menu.new(params[:id])
  end

  def create
    @batch_menu = Batch_menu.new(batch_menu_params)
    if @batch_menu.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def update
    @batch_menu.update(batch_menu_params)
    redirect_to batch_menu_path(@batch_menu)
  end

  private

  def batch_menu_params
    params.require(:batch_menu).permit(:name, :nb_of_people, :nb_of_meals)
  end
end
