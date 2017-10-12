require "rails_helper"

RSpec.feature "Sandrine peut créer un post" do
  before do
    visit "/"
    click_link "Nouveau post"
  end

  scenario "en remplissant comme il faut" do
    fill_in "Title", with: "Moi c'est Sandrine"
    fill_in "Description", with: "Petit article sur moi tu connais"
    fill_in "Content", with: "Je suis avocate et je fais de la boxe en mode vener"
    click_button "Poster"

    expect(page).to have_content "Post effectué :]"
  end
end
