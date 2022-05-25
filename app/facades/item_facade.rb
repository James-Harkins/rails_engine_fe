class ItemFacade
  def self.get_all_items
    RailsEngineService.get_all_items[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.get_one_item(item_id)
    attributes = RailsEngineService.get_one_item(item_id)[:data]
    Item.new(attributes)
  end
end
