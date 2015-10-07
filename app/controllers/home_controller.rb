class HomeController < ApplicationController
  before_action :set_home, only: [:show]

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

    def home
      @answer = Answer.find(params[:id])
    end

  # def login
  #   e = params[:email]
  #   pw = params[:password]
  #   u = User.find_by_email(e)

  #   if u.authenticate(pw)
  #     session[:something] = #something
  #     redirect_to happy_path, notice: "Success Login"
  #   else
  #     redirect_to bad_path, notice: "Bad login info"
  #   end
  # end

  # def logout
  #   session[:something] = nil
  #   redirect_to happy_path, notice: "Success Login"
  # end

end
