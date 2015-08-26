Rails.application.routes.draw do

get("/login", { :controller => "grocery", :action => "login" })
get("/stores", { :controller => "grocery", :action => "stores" })
get("/groceries", { :controller => "grocery", :action => "groceries" })

get("/", { :controller => "grocery", :action => "home" })
end
