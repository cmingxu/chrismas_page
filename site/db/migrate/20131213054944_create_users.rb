# -*- encoding : utf-8 -*-
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :session_id
      t.string :weibo_account

      t.timestamps
    end
  end
end
