# -*- encoding : utf-8 -*-
class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :atype
      t.integer :user_id
      t.string :answer
      t.boolean :answer_match

      t.timestamps
    end
  end
end
