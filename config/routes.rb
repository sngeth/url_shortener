Rails.application.routes.draw do
  post 'new/*original_url' => 'home#new', original_url: /.*/
  get '/' => 'home#goto_original_url'
end
