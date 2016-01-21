# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teamMemberData = [
{name: 'Gaviil',id_steam: '76561198064635221',color: 'orange', avatar_color: 'orange', description: 'Moi ça va, si j\'écoute pas les voix qui me parle.<br>Ps: TA RACE', rank_cs: 'Master Guardian 1', rank_lol: 'Gold 5', role_cs: 'Open Frag', role_lol: 'Support'},
{name: 'Cle61',id_steam: '76561198057820388', color: 'green', avatar_color: 'green', description: ' ', rank_cs: 'Master Guardian 1', rank_lol: '', role_cs: 'Support', role_lol: ''},
{name: 'Sweubi',id_steam: '76561198060575902', color: 'blue', avatar_color: 'blue', description: 'ave caesar morituri te salutant', rank_cs: 'Master Guardian 1', rank_lol: 'Platine 4', role_cs: 'Open frag', role_lol: 'ADC'},
{name: 'Triiiple_Tchiiip',id_steam: '76561198125896249', color: 'yellow', avatar_color: 'red', description: ' ', rank_cs: 'Distinguished Master Guardian', rank_lol: '', role_cs: 'AWP', role_lol: ''},
{name: 'Harreen',id_steam: '76561198201786950', color: 'yellow', avatar_color: 'yellow', description: '', rank_cs: 'Gold nova1', rank_lol: '', role_cs: 'open_frag', role_lol: ''},
{name: 'Rom',id_steam: '76561198112854007', color: 'purple', avatar_color: 'pink', description: ' ', rank_cs: 'Gold Nova 1', rank_lol: '', role_cs: 'Support', role_lol: ''}
]

teamMemberGamesData = [
{team_member_id: 1, name_game: 'csgo'},
{team_member_id: 2, name_game: 'csgo'},
{team_member_id: 3, name_game: 'csgo'},
{team_member_id: 4, name_game: 'csgo'},
{team_member_id: 5, name_game: 'csgo'},
{team_member_id: 6, name_game: 'csgo'},
{team_member_id: 1, name_game: 'lol'},
{team_member_id: 3, name_game: 'lol'},
{team_member_id: 5, name_game: 'lol'},
{team_member_id: 1, name_game: 'block'},
{team_member_id: 2, name_game: 'block'},
{team_member_id: 1, name_game: 'rocket'},
{team_member_id: 2, name_game: 'rocket'},
{team_member_id: 3, name_game: 'rocket'},
{team_member_id: 5, name_game: 'rocket'},
{team_member_id: 1, name_game: 'minecraft'},
{team_member_id: 2, name_game: 'minecraft'},
{team_member_id: 3, name_game: 'minecraft'},
{team_member_id: 5, name_game: 'minecraft'},
{team_member_id: 6, name_game: 'minecraft'},
{team_member_id: 1, name_game: 'rust'},
{team_member_id: 2, name_game: 'rust'},
{team_member_id: 2, name_game: 'clicker'},
{team_member_id: 6, name_game: 'clicker'}
]

teamMemberWeaponsData = [
{team_member_id: 1, name_weapon: 'AK-47_aqua'},
{team_member_id: 1, name_weapon: 'AWP_dieux'},
{team_member_id: 1, name_weapon: 'Five-seven_singe'},
{team_member_id: 2, name_weapon: 'M4A4'},
{team_member_id: 2, name_weapon: 'P90_module'},
{team_member_id: 2, name_weapon: 'XM1014_mercure'},
{team_member_id: 3, name_weapon: 'AK-47_redline'},
{team_member_id: 3, name_weapon: 'M4A4_roi'},
{team_member_id: 3, name_weapon: 'AWP_dieux'},
{team_member_id: 4, name_weapon: 'AWP_cortisera'},
{team_member_id: 4, name_weapon: 'AK-47_cartel'},
{team_member_id: 4, name_weapon: 'Desert_Eagle_cobalt'},
{team_member_id: 6, name_weapon: 'AK-47_cartel'},
{team_member_id: 6, name_weapon: 'Desert_Eagle_conspiration'},
{team_member_id: 6, name_weapon: 'M4A4_evil'}
]

if TeamMember.count == 0
	teamMember = TeamMember.create!(teamMemberData)
	TeamMembersGame.create!(teamMemberGamesData)
	TeamMembersWeapon.create!(teamMemberWeaponsData)
	puts '-> Ajoût des membres de l\'équipe'
else
	# mettre à jour la data
	puts '-> Mise à jour des membres de l\'équipe'
end

# Import des strats roulettes
Roulette.destroy_all
if Roulette.count == 0
	require 'csv'

	CSV.foreach(Rails.root + 'db/stratroulettes.csv', headers: true) do |row|
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
