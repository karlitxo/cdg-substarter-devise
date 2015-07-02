# This migration comes from subengine (originally 20150428110406)
class CreateSubengineMembers < ActiveRecord::Migration
  def change
    create_table :subengine_members do |t|
      t.integer :account_id
      t.integer :user_id

      t.timestamps
    end
  end
end
