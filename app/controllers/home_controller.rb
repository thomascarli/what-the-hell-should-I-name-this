class HomeController < ApplicationController

  INSTRUCTIONS_ARRAY = [
    "REALLY? GIVE ME ANOTHER",
    "AWFUL, GiVE ME ANOTHER",
    "YOU'RE KIDDING RIGHT?",
    "IS THAT THE BEST YOU'VE GOT?",
    "THAT CAN'T BE YOUR ADVICE",
    "I COULD DO BETTER MYSELF",
    "WHOSE IDEA WAS THIS?",
    "THIS IS RIDICULOUS",
    "GO DRUNK YOUR HOME",
    "I'VE GOT NO EXCUSES",
    "ARE WE SURE THIS IS WORKING?"
  ]

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

  def generate_instruction
    result = {"result": INSTRUCTIONS_ARRAY.sample}

    respond_to do |format|
      format.json { render json: result}
    end
  end

end
