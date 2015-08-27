class StoreController < ApplicationController

def index
  @store = Store.all
  end

def add
     @store = Store.new
    @store.first_name = params[:first_name]
    @store.last_name = params[:last_name]
    @store.email = params[:email]
    @store.password = params[:password]

    @store.save

    render("index")
end

def update
  @store = Store.find(params[:id])
  end

  def view
    # all the stores
    @store = Store.all
    render "view"
  end
end
