require "rails_helper"

describe Item do
  it "exists and has attributes" do
    attributes = {
      id: 15,
      attributes: {
        name: "1959 Gibson Les Paul",
        description: "Sunburst Finish, Rosewood Fingerboard",
        unit_price: 25000000
      }
    }
    item = Item.new(attributes)

    expect(item).to be_an Item
    expect(item.id).to eq(15)
    expect(item.name).to eq("1959 Gibson Les Paul")
    expect(item.description).to eq("Sunburst Finish, Rosewood Fingerboard")
    expect(item.unit_price).to eq(25000000)
  end
end
