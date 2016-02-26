class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.integer :band_id
      t.string :url

      t.timestamps null: false
    end
  end
end
