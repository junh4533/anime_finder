require 'myanimelist_client'
require 'pp'
# https://github.com/Oli4242/myanimelist_client

def find_anime(anime_input)
  client = MyanimelistClient.new ENV["USERNAME"], ENV["PASSWORD"] #login info
  if client.verify_credentials.ok?
    results = client.search_anime anime_input #search the anime based on user input
    anime_info = {
      :anime_titles => [],
      :anime_ratings => [],
      :anime_synopsis => [],
      :anime_images => []
    }
    
    results.sort_by(&:score).reverse!.each do |anime| #search results that includes the key word and sorts in descending score
      # "#{anime.title} (#{anime.english}) - #{anime.score}"
      anime_info[:anime_titles] << anime.title 
      anime_info[:anime_ratings] << anime.score
      anime_info[:anime_synopsis] << anime.synopsis
      anime_info[:anime_images] << anime.image
    end

    return anime_info #return the hash with all the search results
  end

end