require "rails_helper"

describe "merchant show page" do
  describe "as a user" do
    describe "when i visit the merchant show page" do
      it "i see a list of items that that merchant sells" do
        visit "/merchants/66"

        expect(page).to have_content("Item Corrupti Dignissimos")
        expect(page).to have_content("Item Est Reiciendis")
        expect(page).to have_content("Item Minus Veritatis")
        expect(page).to have_content("Item Nesciunt Voluptas")
      end
    end
  end
end
