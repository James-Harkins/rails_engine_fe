class ItemsController < ApplicationController
  def index
    @items = ItemFacade.get_all_items
  end

  def show
    @item = ItemFacade.get_one_item(params[:id])
  end
end
