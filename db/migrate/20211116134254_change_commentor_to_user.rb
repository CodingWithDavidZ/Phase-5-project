class ChangeCommentorToUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :creator
    add_column :comments, :user_id, :integer
    add_column :comments, :ticket_id, :integer
  end
end
