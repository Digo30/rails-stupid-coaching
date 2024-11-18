

class   QuestionsController < ApplicationController

  def ask
  end

  def answer

    question_work = "i am going to work"
    @answer_work = "Great!"
    @answer_question = "Silly question, get dressed and go to work!"
    @answer_else = "I dont care, get dressed and go to work!"

    @question = params[:question]

    if @question.downcase == question_work
      @response = @answer_work
    elsif @question.end_with?("?")
      @response = @answer_question
    else
      @response = @answer_else
    end

  end
end
