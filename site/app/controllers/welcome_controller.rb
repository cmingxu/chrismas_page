# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  before_filter :random_string

  def index
    @user.activities.create(:atype => "landing")
  end

  def question
    params[:question] ||= 0
    @question = Question.all[params[:question].to_i]
    ap @question
    @user.activities.create(:atype => "answer")
  end

  def answer_question
    
  end

  def redo_question
  end

  def summary
    @user.activities.create(:atype => "finish_answer")
  end

  def leave_weibo_account
    @user.weibo = params[:weibo]
    @user.save
    @user.activities.create(:atype => "finish_answer")
  end

  def random_string
    unless session[:random_string]
      session[:random_string] = SecureRandom.hex(20)
    end
    @user = User.find_or_create_by_session_id(session[:random_string])
  end

  def criterion
  end
end
