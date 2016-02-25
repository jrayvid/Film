class AddColumnsToBands < ActiveRecord::Migration
  def change
  	add_column :bands, :track, :string
  end
end
