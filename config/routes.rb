Rails.application.routes.draw do
devise_for :users

get("/grocery/list", { :controller => "grocery", :action => "list" })
get("/grocery/add", { :controller => "grocery", :action => "add" })
post("/grocery/create", { :controller => "grocery", :action => "create" })
get("/grocery/edit", { :controller => "grocery", :action => "edit" })

get("/stores/add", { :controller => "store", :action => "add" })
post("/stores/create", { :controller => "store", :action => "create" })
get("/stores/update/:id", { :controller => "store", :action => "update" })
get("/stores/view", { :controller => "store", :action => "view" })
get("/stores", { :controller => "store", :action => "index" })

get("/login", { :controller => "customer", :action => "login" })
get("/home", { :controller => "customer", :action => "home" })

get("/", { :controller => "grocery", :action => "home" })
end
