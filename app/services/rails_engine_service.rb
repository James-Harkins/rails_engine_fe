class RailsEngineService
  def self.conn
    Faraday.new(url: "http://localhost:3000") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def self.get_all_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_items
    response = conn.get("/api/v1/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_one_item(item_id)
    response = conn.get("/api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_merchants_by_name(search)
    response = conn.get("/api/v1/merchants/find_all?name=#{search}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
