class AddAttachmentMp3ToBands < ActiveRecord::Migration
  def self.up
    change_table :bands do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :bands, :mp3
  end
end
