class AddAttachmentBoatPhotoToShips < ActiveRecord::Migration
  def self.up
    change_table :ships do |t|
      t.attachment :boat_photo
    end
  end

  def self.down
    remove_attachment :ships, :boat_photo
  end
end
