Rails.application.routes.draw do
  resources :sentitrigrams
  resources :sentiscores
  resources :sentifourgrams
  resources :metatransferindicators
  resources :metaskills
  resources :metapointofcontacts
  resources :metamediatypes
  resources :metacontactids
  resources :metaclients
  resources :metacampaigns
  resources :metacallstats
  resources :metaagents
  resources :jsoncallworddata
  resources :jsoncalldata
  resources :jsonbeepdata
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
