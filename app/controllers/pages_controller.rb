class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end


  def julia

  end

  def components_alex

  end

  def alex

  end

  def jorgen
  end


end
