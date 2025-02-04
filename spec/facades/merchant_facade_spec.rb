require "rails_helper"

describe MerchantFacade do
  describe "class methods" do
    describe "#get_all_merchants" do
      it "returns a collection of all merchants as Merchant POROs" do
        merchants = MerchantFacade.get_all_merchants

        expect(merchants).to be_a Array
        expect(merchants[0]).to be_a Merchant
        expect(merchants.length).to eq(100)
      end
    end

    describe "#get_merchant_items" do
      it "returns a collection of all of some merchants items as Item POROs" do
        items = MerchantFacade.get_merchant_items(66)

        expect(items).to be_a Array
        expect(items[0]).to be_an Item
        expect(items.length).to eq(39)
      end
    end

    describe "#find_all_by_name" do
      it "returns a collection of all merchants with names including the search param" do
        ill_merchants = MerchantFacade.find_all_by_name("ill")

        expect(ill_merchants).to be_an Array
        expect(ill_merchants[0]).to be_a Merchant
        expect(ill_merchants.length).to eq(5)
      end
    end
  end
end
