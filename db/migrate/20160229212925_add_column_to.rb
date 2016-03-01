class AddColumnTo < ActiveRecord::Migration
  def change
  	add_column :bands, :influences, :text
  end
end
