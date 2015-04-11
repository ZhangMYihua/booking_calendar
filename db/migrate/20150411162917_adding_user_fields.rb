class AddingUserFields < ActiveRecord::Migration
  def change
    add_column :users, :remember_me_token, :string, :default => nil
    add_column :users, :remember_me_token_expires_at, :datetime, :default => nil
    add_index :users, :remember_me_token
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city_time_zone, :string
  end
end
