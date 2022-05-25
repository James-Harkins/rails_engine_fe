class ItemsController < ApplicationController
  def index
    @items = ItemFacade.get_all_items
  end

  def show
  end
end
