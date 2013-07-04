class AddAttachmentPathToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :path
    end
  end

  def self.down
    drop_attached_file :items, :path
  end
end
