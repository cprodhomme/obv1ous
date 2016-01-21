require 'net/http'
require 'uri'
require 'json'

namespace :import do
	desc "importe les stratroulettes"
  task :stratroulette => [:environment] do
  	source = 'https://spreadsheets.google.com/feeds/list/1CmWV33W10CvMczfrX76x8ADAtv1OPzME-Aps7m_R-g8/od6/public/values?alt=json'
  	# 1CmWV33W10CvMczfrX76x8ADAtv1OPzME-Aps7m_R-g8
  	# https://spreadsheets.google.com/feeds/list/1CmWV33W10CvMczfrX76x8ADAtv1OPzME-Aps7m_R-g8/od6/public/values?alt=json
  	uri = URI(source)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    Roulette.destroy_all
		data['feed']['entry'].each do |row|
				if row['gsx$ct']['$t'] == 'X'
					Roulette.create!(name: row['gsx$titre']['$t'], strat: row['gsx$strat']['$t'], team: 'CT')
				end

				if row['gsx$t']['$t'] == 'X'
					Roulette.create!(name: row['gsx$titre']['$t'], strat: row['gsx$strat']['$t'], team: 'T')
				end
		end
  end
end