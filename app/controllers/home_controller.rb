class HomeController < ApplicationController

  def index
  end

  def generate_name
    base_word = params["user_input"].split(" ").first

    synonym_array = Dinosaurus.synonyms_of(base_word)
    # get random word from array
    # eventually store synonyms in db for fewer api calls and quicker response times
    result = {"result": synonym_array.sample || "NOPE, GO AWAY."}

    respond_to do |format|
      format.json { render json: result}
    end
  end

  # future ajax method to hit
  # def get_synonym_array
  #   @synonym_array = Dinosaurus.synonyms_of(params['base_word'])
  # end

end
