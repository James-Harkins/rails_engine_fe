require "rails_helper"

describe Merchant do
  it "exists with attributes" do
    attributes = {
      id: 9,
      attributes: {
        name: "Jim's Rare Guitars"
      }
    }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq(9)
    expect(merchant.name).to eq("Jim's Rare Guitars")
  end
end
