class ChangeTypeOfBio < ActiveRecord::Migration
  def change
  		remove_column :bands, :bio, :text
  		add_column :bands, :bio, :text
  end
end
