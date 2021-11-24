class BatchMenusController < ApplicationController

  def new
    @batch_menu = BatchMenu.new
  end

  def show
    @batch_menu = BatchMenu.new(params[:id])
  end

  def create
    @batch_menu = BatchMenu.new(batch_menu_params)
    @batch_menu.user_id = current_user.id
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
    params.require(:batch_menu).permit(:name, :nb_of_people, :monday_lunch, :monday_dinner, :tuesday_lunch, :tuesday_dinner, :wednesday_lunch, :wednesday_dinner, :thursday_lunch, :thursday_dinner, :friday_lunch, :friday_dinner, :saturday_lunch, :saturday_dinner, :sunday_lunch, :sunday_dinner)
  end
end
