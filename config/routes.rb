Rails.application.routes.draw do
  root "v1/page_contents#index"
  get "parse_page", :controller => "v1/page_contents", :action => "new"
  post "page_contents", :controller => "v1/page_contents", :action => "create"
end
