class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :roll, :string
  end
end
