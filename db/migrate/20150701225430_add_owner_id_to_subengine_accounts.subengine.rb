# This migration comes from subengine (originally 20150426115631)
class AddOwnerIdToSubengineAccounts < ActiveRecord::Migration
  def change
    add_column :subengine_accounts, :owner_id, :integer
  end
end
