# This migration comes from gatherin_auth (originally 20191228192835)
class EnablePkce < ActiveRecord::Migration[6.0]
  def change
    add_column :oauth_access_grants, :code_challenge, :string, null: true
    add_column :oauth_access_grants, :code_challenge_method, :string, null: true
  end
end
