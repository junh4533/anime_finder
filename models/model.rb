require 'myanimelist_client'

# First, create a client
# MyAnimeList.net requires a valid account to consume their API
client = MyanimelistClient.new 'junh4533', 'weiqing4533weiqing4533'

# Then you may want to check if your username / password are ok
if client.verify_credentials.ok?

  # Now you can use the API
  # Let's search a good anime!
  results = client.search_anime 'attack on titan'

  # Everything is nicely wrapped in small objects
  results.sort_by(&:score).reverse!.each do |anime|
    # puts "#{anime.title} (#{anime.english}) - #{anime.score}"
    # puts anime.image 
    puts anime.title
  end

end


