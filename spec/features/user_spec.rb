require "rails_helper"

describe 'Utilisateur', type: :feature do
  	let!(:user) { create :user }

    before :each do
		create_account_and_log_in user
	end

  	scenario "ne peut pas accèder à l'interface admin" do
    	visit admin_path
    	expect(current_path).to eq index_path
  	end
end