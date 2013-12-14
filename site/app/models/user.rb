# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_many :activities

  def visit_date
    self.created_at.strftime("%m/%d")
  end

  def stay_time
    if self.activities.last
      self.activities.last.created_at - self.created_at 
    else
      0
    end
  end
end
