class ItemFacade
  def self.get_all_items
    RailsEngineService.get_all_items[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
