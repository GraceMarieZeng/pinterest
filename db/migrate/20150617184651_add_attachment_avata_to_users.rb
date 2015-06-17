class AddAttachmentAvataToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avata
    end
  end

  def self.down
    remove_attachment :users, :avata
  end
end
