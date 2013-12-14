# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  before_filter :random_string

  def index
    @user.activities.create(:atype => "landing")
  end

  def question
    params[:question] ||= 0
    @question = Question.all[params[:question].to_i]
  end

  def age_poll
  end

  def submit_age
    @user.activities.create(:atype => "submit_age")
    @user.age = params[:age]
    @user.save
    redirect_to question_path
  end

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

  def redo_question
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
    unless session[:random_string]
      session[:random_string] = SecureRandom.hex(20)
    end
    @user = User.find_or_create_by_session_id(session[:random_string])
  end

  def criterion
  end

  def thanks
  end
end
