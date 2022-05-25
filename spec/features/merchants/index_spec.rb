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
    end
  end
end
