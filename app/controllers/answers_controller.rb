class AnswersController < ApplicationController
  before_action :set_answer, only: [:show]

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create!(answer_params)

    if @answer.save
      redirect_to @answer, notice: 'SUCCCESSS!!'
    else
      render :new
    end
  end


  def show
  end

  private
    def answer_params
      params.require(:answer).permit(:name, :chocolate, :puppies, :rainbows, :cold_hard_cash)
    end

    def set_answer
      @answer = Answer.find(params[:id])
    end
end
