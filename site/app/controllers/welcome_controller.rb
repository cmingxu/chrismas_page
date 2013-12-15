# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  before_filter :random_string, :except => [:index]

  def index
    session[:random_string] = SecureRandom.hex(20)
    @user = User.create(:session_id => session[:random_string])
    @user.activities.create(:atype => "landing")
  end

  def participation
    @user.activities.create(:atype => "participate")
    head :ok
  end

  def submit_age
    @user.activities.create(:atype => "submit_age")
    @user.age = params[:age]
    @user.gender =params[:gender]
    @user.save
    redirect_to question_path
  end

  # not in use anymore
  def answer_question
    question = Question.all[params[:question].to_i]
    result = params[:result].is_a?(Array) ? params[:result].join : params[:result].strip
    unless result.downcase == question.answer.downcase
      @user.activities.create(:atype => "answer", :answer_match => false)
      redirect_to redo_question_path(:question =>  params[:question])
    else
      @user.activities.create(:atype => "answer", :answer_match => true)
      next_offset = params[:question].to_i.next
      @question = Question.all[next_offset]
      if @question
        redirect_to welcome_question_path(:question => next_offset)
      else
        redirect_to summary_path
      end
    end
  end

  def summary
    @user.activities.create(:atype => "finish_answer")
  end

  def leave_weibo_account
    @user.weibo_account = params[:weibo]
    @user.save
    @user.activities.create(:atype => "submit_weibo")
    redirect_to thanks_path
  end

  def random_string
    @user = User.find_by_session_id(session[:random_string])
    if not @user
      redirect_to root_path 
      return false
    end
  end

  def criterion
  end

  def thanks
  end
end
