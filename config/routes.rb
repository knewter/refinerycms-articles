::Refinery::Application.routes.draw do
  scope(:as => 'refinery', :module => 'refinery') do
    resources :articles, :only => [:index, :show]
  end

  scope(:path => 'refinery', :as => 'refinery_admin', :module => 'refinery/admin') do
    resources :articles, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
