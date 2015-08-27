Rails.application.routes.draw do

get("/groceries", { :controller => "grocery", :action => "groceries" })
get("/grocery/list", { :controller => "grocery", :action => "list" })
get("/grocery/add", { :controller => "grocery", :action => "add" })
get("/grocery/edit", { :controller => "grocery", :action => "edit" })

get("/stores/add", { :controller => "store", :action => "add" })
get("/stores/update/:id", { :controller => "store", :action => "update" })
get("/stores/view", { :controller => "store", :action => "view" })
get("/stores", { :controller => "store", :action => "index" })

get("/login", { :controller => "customer", :action => "login" })
get("/home", { :controller => "customer", :action => "home" })

get("/", { :controller => "grocery", :action => "home" })
end
