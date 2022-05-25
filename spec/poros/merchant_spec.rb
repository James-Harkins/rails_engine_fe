require "rails_helper"

describe Merchant do
  it "exists with attributes" do
    attributes = {
      name: "Jim's Rare Guitars"
    }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq("Jim's Rare Guitars")
  end
end
