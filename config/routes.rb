Wisdom::Engine.routes.draw do
  resources :topics do
    collection do
        post 'reorder' => 'topics#reorder'
    end
    resources :questions do
      collection do
        post 'reorder' => 'questions#reorder'
      end
    end
  end
  root :to => 'topics#public'
end
