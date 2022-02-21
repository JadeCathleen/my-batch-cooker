class BatchMenusController < ApplicationController
  before_action :verify_authenticity_token
  before_action :set_batch_menu, only: [:show, :destroy]

  def new
    @batch_menu = BatchMenu.new
    authorize @batch_menu
  end

  def show
    authorize @batch_menu
    @meals = @batch_menu.recipes_lists
  end

  def create
    @batch_menu = BatchMenu.new(batch_menu_params)
    authorize @batch_menu
    @batch_menu.user_id = current_user.id
    if @batch_menu.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def associate_prep_steps
    authorize @batch_menu
  end

  def index
    @batch_menus = policy_scope(BatchMenu).order(created_at: :desc)
  end

  def destroy
    authorize @batch_menu
    @batch_menu.destroy
    redirect_to batch_menus_path
  end

  private

  def set_batch_menu
    @batch_menu = BatchMenu.find(params[:id])
  end

  def batch_menu_params
    params.require(:batch_menu).permit(:name, :nb_of_people, :monday_lunch, :monday_dinner, :tuesday_lunch, :tuesday_dinner, :wednesday_lunch, :wednesday_dinner, :thursday_lunch, :thursday_dinner, :friday_lunch, :friday_dinner, :saturday_lunch, :saturday_dinner, :sunday_lunch, :sunday_dinner)
  end
end
