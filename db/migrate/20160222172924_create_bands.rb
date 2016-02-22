 class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :bname
      t.string :city
      t.string :state
      t.string :email
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end
