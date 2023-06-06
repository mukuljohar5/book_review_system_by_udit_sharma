class ChangeAvtarToBeAttachmentInBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :avatar, :attachment
  end
end
