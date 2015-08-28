class StoreController < ApplicationController

def index
  @store = Store.all
  end

def add
     @store = Store.new
    @store.name = params[:name]
    @store.address = params[:address]
    @store.type = params[:type]
    @store.hours = params[:hours]

    @store.save

    render("add")
end

def update
  render "update"
  end

  def view
    # all the stores
    @stores = Store.all
    render "view"
  end
end
