class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show]

  def index
    if params[:category].present?
      @category = Category.find_by short_name: params[:category] 
      @menu_items = []
      @menu_items = @category.menu_items unless @category.nil?
    else
      # Avoid N+1 queries...
      @menu_items = MenuItem.includes(:category).all
    end
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

end
