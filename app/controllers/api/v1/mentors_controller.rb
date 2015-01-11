class Api::V1::MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  # def show
  #   @mentors = Mentor.all
  #   @mentor = Mentor.find_by params[:id]
  # end
end
