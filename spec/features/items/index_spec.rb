require "rails_helper"

describe "items index page" do
  describe "as a user" do
    describe "when i visit the items index page" do
      it "i see a list of items by name" do
        visit "/items"

        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Quidem Suscipit")
        expect(page).to have_content("Item Dolorem Et")
        expect(page).to have_content("Item Qui Veritatis")
      end

      it "each name is a link to that items show page" do
        visit "/items"

        click_link "Item Nemo Facere"

        expect(current_path).to eq("/items/4")
      end
    end
  end
end
