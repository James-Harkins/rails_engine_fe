require "rails_helper"

describe MerchantFacade do
  describe "class methods" do
    describe "#get_all_merchants" do
      it "returns a collection of all merchants as Merchant POROs" do
        merchants = MerchantFacade.get_all_merchants

        expect(merchants).to be_a Array
        expect(merchants[0]).to be_a Merchant
        expect(merchants.length).to eq(99)
      end
    end
  end
end
