class MerchantFacade
  def self.get_all_merchants
    RailsEngineService.get_all_merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
