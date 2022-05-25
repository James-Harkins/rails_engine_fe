class MerchantFacade
  def self.get_all_merchants
    RailsEngineService.get_all_merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_merchant_items(merchant_id)
    RailsEngineService.get_merchant_items(merchant_id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.find_all_by_name(search)
    RailsEngineService.find_merchants_by_name(search)[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
