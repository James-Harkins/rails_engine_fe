require "rails_helper"

describe RailsEngineService do
  describe "class methods" do
    describe "#get_all_merchants" do
      it "returns a Hash containing a data key with a value of an Array of all merchants" do
        merchants = RailsEngineService.get_all_merchants

        expect(merchants).to be_a Hash
        expect(merchants[:data]).to be_a Array
        expect(merchants[:data][0]).to be_a Hash
        expect(merchants[:data][0][:attributes]).to be_a Hash
        expect(merchants[:data][0][:attributes][:name]).to eq("Schroeder-Jerde")
      end
    end

    describe "#get_merchant_items" do
      it "returns a Hash containing a data key with a value of an Array of all that merchants items" do
        items = RailsEngineService.get_merchant_items(66)

        expect(items).to be_a Hash
        expect(items[:data]).to be_a Array
        expect(items[:data][0]).to be_a Hash
        expect(items[:data][0][:id]).to eq("1575")
        expect(items[:data][0][:attributes]).to be_a Hash
        expect(items[:data][0][:attributes][:name]).to eq("Item Corrupti Dignissimos")
        expect(items[:data][0][:attributes][:description]).to eq("Sint non ipsum commodi mollitia veritatis. Autem et occaecati quo et quae reprehenderit eum. Harum aliquid aut a necessitatibus qui. Laudantium excepturi minima. Est nostrum sed laboriosam.")
        expect(items[:data][0][:attributes][:unit_price]).to eq(623.74)
      end
    end

    describe "#get_all_items" do
      it "returns a Hash containing a data key with a value of an Array of all items" do
        items = RailsEngineService.get_all_items

        expect(items).to be_a Hash
        expect(items[:data]).to be_a Array
        expect(items[:data][0]).to be_a Hash
        expect(items[:data][0][:id]).to eq("4")
        expect(items[:data][0][:attributes]).to be_a Hash
        expect(items[:data][0][:attributes][:name]).to eq("Item Nemo Facere")
        expect(items[:data][0][:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(items[:data][0][:attributes][:unit_price]).to eq(42.91)
      end
    end

    describe "#get_one_item" do
      it "returns a Hash containing the data for one item" do
        item = RailsEngineService.get_one_item(4)

        expect(item).to be_a Hash
        expect(item[:data]).to be_a Hash
        expect(item[:data][:id]).to eq("4")
        expect(items[:data][:attributes][:name]).to eq("Item Nemo Facere")
        expect(items[:data][:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(items[:data][:attributes][:unit_price]).to eq(42.91)
      end
    end
  end
end
