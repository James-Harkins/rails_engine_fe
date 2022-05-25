require "rails_helper"

describe "items show page" do
  describe "as a user" do
    describe "when i visit an items show page" do
      it "i see the name of the item, description, and unit price" do
        visit "/items/4"

        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(page).to have_content("Unit Price: $42.91")
      end
    end
  end
end
