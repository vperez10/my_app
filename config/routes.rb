Rails.application.routes.draw do

get("/groceries", { :controller => "grocery", :action => "groceries" })
get("/grocerylist", { :controller => "grocery", :action => "list" })
get("/groceryadd", { :controller => "grocery", :action => "add" })
get("/groceryrepeat", { :controller => "grocery", :action => "repeat" })

get("/stores", { :controller => "store", :action => "stores" })
get("/storesupdate", { :controller => "store", :action => "update" })
get("/storesview", { :controller => "store", :action => "view" })

get("/login", { :controller => "customer", :action => "login" })
get("/home", { :controller => "customer", :action => "home" })

get("/", { :controller => "grocery", :action => "home" })
end
