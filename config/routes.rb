Rails.application.routes.draw do
   get 'welcome/index'

   get 'welcome/about'

   get 'welcome/faq'

   root 'welcome#index'

   root 'welcom#faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
