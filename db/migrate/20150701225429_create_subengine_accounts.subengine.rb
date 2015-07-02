# This migration comes from subengine (originally 20150426071228)
class CreateSubengineAccounts < ActiveRecord::Migration
  def change
    create_table :subengine_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
