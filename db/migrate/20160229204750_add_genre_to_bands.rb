class AddGenreToBands < ActiveRecord::Migration
  def change
    add_column :bands, :genre, :string
    add_column :bands, :bio, :string
  end
end
