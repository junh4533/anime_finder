require 'myanimelist_client'
require 'pp'
# https://github.com/Oli4242/myanimelist_client

def find_anime(anime_input)
  client = MyanimelistClient.new 'junh4533', 'weiqing4533weiqing4533'
  if client.verify_credentials.ok?
    results = client.search_anime anime_input
    anime_info = {
      :anime_titles => [],
      :anime_ratings => [],
      :anime_synopsis => [],
      :anime_images => []
    }
    # test = client.search_anime " " 
    results.sort_by(&:score).reverse!.each do |anime| #search reuslts that includes the key word and sorts in descending score
      # "#{anime.title} (#{anime.english}) - #{anime.score}"
      anime_info[:anime_titles] << anime.title #list of 5 animes
      anime_info[:anime_ratings] << anime.score
      anime_info[:anime_synopsis] << anime.synopsis
      anime_info[:anime_images] << anime.image
    end
    
    # test.sort_by(&:score).reverse.each do |anime| #search reuslts that includes the key word and sorts in descending score
    #   pp anime.score
    # end
    
    return anime_info
  end

end