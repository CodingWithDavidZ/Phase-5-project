class ChangeProblemTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :problem_type
    add_column :tickets, :category, :integer
  end
end
