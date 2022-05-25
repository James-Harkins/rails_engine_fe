require "rails_helper"

describe "landing page" do
  describe "as a user" do
    describe "when i visit the landing page " do
      it "i see a form to search to find all merchants by some name fragment" do
        visit "/"

        fill_in :search, with: "ill"

        expect(current_path).to eq("/")
        expect(page).to have_content("Schiller, Barrows and Parker")
        expect(page).to have_content("Tillman Group")
        expect(page).to have_content("Williamson Group")
        expect(page).not_to have_content("Schroeder-Jerde")
      end
    end
  end
end
