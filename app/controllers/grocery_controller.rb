class GroceryController < ApplicationController

def login
  render "login"
  end

def home
  render "home"
end

def list
  # all the stores
    @groceries = AdditionalItems.all
    render "list"
end

def add
  render "add"
end

def edit
  render "edit"
end

end
