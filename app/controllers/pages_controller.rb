class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :about, :realisations, :menu , :evento]

  def home
  end



  def about
  end

  def realisations
   @instagram = Instagram.user_recent_media("1412987828", {:count => 20})

  end

  def menu
  end

  def evento
  end




end
