require "rails_helper"

describe "merchants index page" do
  describe "as a user" do
    describe "when i visit the merchants index page" do
      it "i see a list of merchants by name" do
        visit "/merchants"

        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Bechtelar LLC")
        expect(page).to have_link("Fahey-Stiedemann")
        expect(page).to have_link("Glover Inc")
      end
    end
  end
end
