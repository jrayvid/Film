class AddVideoColumnToBands < ActiveRecord::Migration
  def change
  	add_column :bands, :video, :string
  end
end
