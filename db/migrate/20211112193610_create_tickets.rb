class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :type
      t.integer :department
      t.integer :priority
      t.text :issue_description
      t.integer :submitted_by
      t.string :image_url
      t.datetime :start
      t.datetime :close
      t.integer :creator
      t.datetime :created
      t.timestamp :modified
      t.integer :modified_by
      t.integer :comment_id
      t.boolean :approved

      t.timestamps
    end
  end
end
