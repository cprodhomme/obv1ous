require "rails_helper"

RSpec.feature "Roulette", :type => :feature do
	scenario "Un utilisateur va sur la page roulette" do
		visit roulette_index_path

		expect(page).to have_text("Strat Roulette")
	end
end