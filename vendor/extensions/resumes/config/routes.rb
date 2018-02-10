Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :resumes do
    resources :resumes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :resumes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :resumes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :resumes do
    resources :technologies, :only => [:index, :show]
  end

  # Admin routes
  namespace :resumes, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/resumes" do
      resources :technologies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :resumes do
    resources :employments, :only => [:index, :show]
  end

  # Admin routes
  namespace :resumes, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/resumes" do
      resources :employments, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
