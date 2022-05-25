require "rails_helper"

describe "merchants index page" do
  describe "as a user" do
    describe "when i visit the merchants index page" do
      it "i see a list of merchants by name" do
        visit "/merchants"

        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Bechtelar LLC")
        expect(page).to have_content("Fahey-Stiedemann")
        expect(page).to have_content("Glover Inc")
      end

      it "each name is a link to that merchants show page" do
        visit "/merchants"

        click_link "Bechtelar LLC"

        expect(current_path).to eq("/merchants/66")
      end
    end
  end
end
