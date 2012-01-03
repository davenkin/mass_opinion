class QuestionsController < ApplicationController
  def index
    @questions = Question.all()
  end

  def vote
    option_id = params[:id]
    @option = Option.find(option_id)
    @option.vote_count += 1
    respond_to do |format|
      if @option.save
        format.html { redirect_to root_path }
        format.json { render :json => @option.vote_count }
      else
        format.html { redirect_to root_path }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  def by_category
    category = Category.find_by_name params[:category]
    @questions = category.questions
    render 'index'
  end

end
