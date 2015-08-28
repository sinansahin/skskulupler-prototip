class AddAttachmentAvatarToInfos < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :infos, :avatar
  end
end
