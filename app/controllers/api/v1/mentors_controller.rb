class Api::V1::MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end
end
