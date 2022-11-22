class PagesController < ApplicationController
  def home
  end
  def components_alex
    @grandma = Grandma.new
  end
end
