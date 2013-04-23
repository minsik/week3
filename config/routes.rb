Hw3::Application.routes.draw do
  get '/dice', controller: 'dice', action: 'dice', as: 'dice'

  get '/poker', controller: 'poker', action: 'poker', as: 'poker'


  get '/rps', controller: 'rps', action: 'rps', as: 'rps'
  post '/rps/roll', controller: 'rps', action: 'roll', as: 'roll'

end
