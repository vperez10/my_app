class GroceryController < ApplicationController
before_action :authenticate_user!

def login
  render "login"
  end

def home
  render "home"
end

def list
  # all the stores
    @groceries = AdditionalItem.all + RepeatItem.all
    render "list"
end

def add
  render "add"
end

def edit
  render "edit"
end

end
