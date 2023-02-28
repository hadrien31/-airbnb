class PagesController < ApplicationController

  def home
    @adventures = Adventure.all
  end
end
