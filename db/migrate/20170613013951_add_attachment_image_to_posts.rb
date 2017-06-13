class AddAttachmentImageToPosts < ActiveRecord::Migration[5.1]
	#Specifies the rails release(5.1) that the migration was written for to proceed with migration
  def self.up
    change_table :posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :posts, :image
  end
end
