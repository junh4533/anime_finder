require 'myanimelist_client'
require 'pp'

def find_anime(anime_input)
  client = MyanimelistClient.new 'junh4533', 'weiqing4533weiqing4533'
  if client.verify_credentials.ok?
    results = client.search_anime anime_input
    anime_array = []
    results.sort_by(&:score).reverse!.each do |anime|
      "#{anime.title} (#{anime.english}) - #{anime.score}"
      # "#{anime.title} (#{anime.english}) - #{anime.score}"
       anime_array << anime.title
    end
    return anime_array
  end

end