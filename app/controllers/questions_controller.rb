class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    
  end
  
  def show
    #p params[:id]
    @question = Question.find(params[:id])
    #p @question
  end
  
  def new
    @question = Question.new
    
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      #auto redirect to /show
      redirect_to @question
    else
      render 'new', status: :unprocessable_entity
    end
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit', status: :unprocessable_entity
    end
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
  
  private
  #filter unpermitted data fields
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end
