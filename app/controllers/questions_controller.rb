class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @result = if @answer == 'I am going to work'
                'Great!'
              elsif @answer[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
