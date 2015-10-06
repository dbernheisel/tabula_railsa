class HomeController < ApplicationController

  def form
    if request.post?
      @answer = Answer.create!(
            name: params[:answer][:name],
            chocolate: params[:answer][:chocolate],
            puppies: params[:answer][:puppies],
            cold_hard_cash: params[:answer][:cold_hard_cash],
            rainbows: params[:answer][:rainbows]
      )
    else
      @answer = Answer.new
    end
  end

end
