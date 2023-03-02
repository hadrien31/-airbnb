class PagesController < ApplicationController
  def home
    @adventures = Adventure.all
  end

  def profil; end
end
