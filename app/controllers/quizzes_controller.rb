class QuizzesController < ApplicationController

	def new
	@quiz = Quiz.new
	@quiz.questions.build
end

	def index
		@quizzes = Quiz.all
	end

def show
    @quiz = Quiz.find(params[:id])
    # redirect_to '/'
    # @questions = Quiz.find(params[:questions])
  end

def edit
    @quiz = Quiz.find params[:id]
  end

 def create
    @quiz = Quiz.new params[:quiz].permit(:title, :questions, questions_attributes: [:query])

    if @quiz.save
      redirect_to @quiz
    else
      render 'new'
    end
  end


end
