require 'myanimelist_client'
require 'pp'

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
    # anime_info = {
    #   :anime1 => {
			 # :title => "",
			 # :synopsis => "",
			 # :image_link => "",
			 # :rating => ""
		  # },
		  # :anime2 => {
			 # :title => "",
			 # :synopsis => "",
			 # :image_link => "",
			 # :rating => ""
		  # },
		  # :anime3 => {
			 # :title => "",
			 # :synopsis => "",
			 # :image_link => "",
			 # :rating => ""
		  # },
		  # :anime4 => {
			 # :title => "",
			 # :synopsis => "",
			 # :image_link => "",
			 # :rating => ""
		  # },
		  # :anime5 => {
			 # :title => "",
			 # :synopsis => "",
			 # :image_link => "",
			 # :rating => ""
		  # }
    # }
    # test = client.search_anime "kimi no na wa" 
    results.sort_by(&:score).reverse!.each do |anime| #search reuslts that includes the key word and sorts in descending score
      # "#{anime.title} (#{anime.english}) - #{anime.score}"
      # puts anime.inspect
      anime_info[:anime_titles] << anime.title #list of 5 animes
      anime_info[:anime_ratings] << anime.score
      anime_info[:anime_synopsis] << anime.synopsis
      anime_info[:anime_images] << anime.image
    end
    
    # test.sort_by(&:score).reverse!.each do |anime| #search reuslts that includes the key word and sorts in descending score
    #   puts anime.title
    # end
    
    # puts anime_images
    return anime_info
  end

end