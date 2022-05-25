require "rails_helper"

describe MerchantService do
  describe "class methods" do
    describe "#get_all_merchants" do
      it "returns an Hash containing a data key with a value of an Array all merchants" do
        merchants = MerchantService.get_all_merchants

        expect(merchants).to be_a Hash
        expect(merchants[:data]).to be_a Array
        expect(merchants[:data][0]).to be_a Hash
        expect(merchants[:data][0][:attributes]).to be_a Hash
        expect(merchants[:data][0][:attributes][:name]).to eq("Schroeder-Jerde")
      end
    end
  end
end
