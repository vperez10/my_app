class GroceryController < ApplicationController

def home
  render "home"
  end

def stores
  render "stores"
end

def list
  render "list"
end

def add
  render "add"
end

def repeat
  render "repeat"
end
def groceries
  render "groceries"
end

end
