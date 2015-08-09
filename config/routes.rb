Rails.application.routes.draw do
  devise_for :users
  root to: "auctions#index"

    # "add a new lot" goes to auctions/auction_id/artists
    #
    #    auctions/auction_id/artists/id

    #        artists/artist_id/lots/new
    #    artist.auctions

    # a list of existing artists, the user clicks an artist
    # and goes to auctions/auction_id/lots/new

    # if artist is not listed, the user is prompted to go to
    # auction/auction_id/artists/new
    # the new artist is associated with the auction.
    # user is redirected to auction/auction_id/lots/new with
    #  the artist preselected? -- Maybe, I can use a timestamp
    # and have the most recent artist preselected?

    # resources :auctions do
    #   resources :artists
    # end

    resources :auctions do
      resources :lots
    end

    resources :artists do
      resources :lots
    end
    # form for lot,
    # add a new artists
    # artist form
    # ajax keeps it on the same page.


  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
end
