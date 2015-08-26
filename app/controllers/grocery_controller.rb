class GroceryController < ApplicationController

def home
  render "home"
  end

def login
  render "login"
end

def stores
  render "stores"
end

def groceries
  render "groceries"
end

end
