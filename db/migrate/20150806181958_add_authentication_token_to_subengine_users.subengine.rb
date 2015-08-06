# This migration comes from subengine (originally 20150719125100)
class AddAuthenticationTokenToSubengineUsers < ActiveRecord::Migration
  def change
    add_column :subengine_users, :authentication_token, :string
    add_index :subengine_users, :authentication_token
  end
end
