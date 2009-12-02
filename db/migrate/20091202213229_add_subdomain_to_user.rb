class AddSubdomainToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :subdomain, :string
  end

  def self.down
    remove_column :users, :subdomain
  end
end
