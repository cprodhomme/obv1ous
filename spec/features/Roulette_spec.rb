require "rails_helper"

RSpec.feature "Roulette", :type => :feature do
	scenario "Un utilisateur veux voir une stratroulette CT" do
		visit roulette_index_path

		click_button "CT"

	end
end