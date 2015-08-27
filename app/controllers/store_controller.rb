class StoreController < ApplicationController

def index
  @store = Store.all
  end

def update
  render "update"
  end

  def view
    # all the stores
    @store = Store.all
    render "view"
  end
end
