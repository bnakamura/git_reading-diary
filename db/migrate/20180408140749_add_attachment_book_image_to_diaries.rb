class AddAttachmentBookImageToDiaries < ActiveRecord::Migration
  def self.up
    change_table :diaries do |t|
      t.attachment :book_image
    end
  end

  def self.down
    remove_attachment :diaries, :book_image
  end
end
