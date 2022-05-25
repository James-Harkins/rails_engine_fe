require "rails_helper"

describe ItemFacade do
  describe "class methods" do
    describe "#get_all_items" do
      it "returns a collection of all Items as Item POROs" do
        items = ItemFacade.get_all_items

        expect(items).to be_a Array
        expect(items[0]).to be_an Item
        expect(items.length).to eq(2483)
      end
    end

    describe "#get_one_item" do
      it "returns one Item PORO based on item id" do
        item = ItemFacade.get_one_item(4)

        expect(item).to be_an Item
        expect(item.id).to eq("4")
        expect(item.name).to eq("Item Nemo Facere")
        expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(item.unit_price).to eq(42.91)
      end
    end
  end
end
