class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question]

      @question = params[:question].strip
      @question = "No input" if @question == ""

      if @question == "I am going to work"
        @answer = "Great!"
      elsif @question[-1] == "?"
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end

    end
  end

end
