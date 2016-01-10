# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teamMemberData = [
{name: 'Gaviil', color: 'orange', avatar_color: 'orange', description: 'Pizza <3', rank_cs: 'Distinguished Master Guardian', rank_lol: 'Gold 5', role_cs: 'Open Frag', role_lol: 'Support'}, 
{name: 'Cle61', color: 'green', avatar_color: 'green', description: '', rank_cs: 'Distinguished Master Guardian', rank_lol: '', role_cs: 'Support', role_lol: ''},
{name: 'Sweubi', color: 'blue', avatar_color: 'blue', description: '', rank_cs: 'Distinguished Master Guardian', rank_lol: 'Platine 4', role_cs: 'Open frag', role_lol: 'ADC'}
]

if TeamMember.count == 0
	teamMember = TeamMember.create!(teamMemberData)
	#teamMember.team_members_game.create!()
	#teamMember.team_members_weapon.create!()
	puts '-> Ajoût des membres de l\'équipe'
else
	# mettre à jour la data
	puts '-> Mise à jour des membres de l\'équipe'
end

# Import des strats roulettes
if Roulette.count == 0
	require 'csv'

	CSV.foreach(Rails.root + 'db/fichier.csv', headers: true) do |row|
		strats_hash = row.to_hash

		if strats_hash['CT'] == 'X'
			Roulette.create!(name: strats_hash['Titre'], strat: strats_hash['Strat'], team: 'CT')
		end

		if strats_hash['T'] == 'X'
			Roulette.create!(name: strats_hash['Titre'], strat: strats_hash['Strat'], team: 'T')			
		end
	end

	puts '-> Import des strats roulettes du fichier CSV'
end

if Rails.env.development?
	# On crée un utilisateur test
	if User.count == 0
		User.create!(email: 'test@test.fr', username: 'test', password: '123456', password_confirmation: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: 1)
		puts '-> Ajoût de l\'utilisateur Test avec le mot de passe suivant : 123456'
	end

	# On crée un article
	if News.count == 0 
		News.create!(title: 'article exemple', summary: 'résumé de l\'article', content: 'texte de l\'article', image: 'news2.png')
		puts '-> Ajoût d\'un article'
	end
elsif Rails.env.production?
	adminUser = ['Cle61', 'Gaviil', 'Sweubi']
	adminUser.each do |username|
		user = User.where(username: username)
		
		if user.count != 0 && user.first.admin == 0
			user.first.update_attributes!(admin: 1)
			puts '-> ' + username + 'ajouté en administrateur'
		end
	end
end

