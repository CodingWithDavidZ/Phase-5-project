class ChangeTypeToProblemType < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :type
    add_column :tickets, :problem_type, :integer
  end
end
