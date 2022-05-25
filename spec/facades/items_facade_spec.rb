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
  end
end
