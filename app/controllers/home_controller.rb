class HomeController < ApplicationController

  def index
    response = Dinosaurus.synonyms_of('read')
  end
end
