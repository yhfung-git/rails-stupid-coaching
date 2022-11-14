class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].end_with?('?')
      @answers = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @answers = 'Great!'
    else
      @answers = 'I don\'t care, get dressed and go to work!'
    end
  end
end
