require "rails_helper"

describe 'Utilisateur', type: :feature do
  	let!(:user) { FactoryGirl.create :user }

  	scenario "ne peut pas accèder à l'interface admin" do
    	visit admin_path
    	expect(current_path).to eq root_path
  	end
end