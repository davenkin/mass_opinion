class HomeController < ApplicationController
  def index
    @questionnaire = Questionnaire.find(:first)
  end

end
