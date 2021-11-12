class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :lead
      t.integer :department

      t.timestamps
    end
  end
end
