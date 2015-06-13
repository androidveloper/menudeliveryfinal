class AddAttachmentImagenToLunches < ActiveRecord::Migration
  def self.up
  #  change_table :lunches do |t|
  #    t.attachment :imagen
  #   end
   add_attachment :lunches, :imagen
  end

  def self.down
    remove_attachment :lunches, :imagen
  end
end
