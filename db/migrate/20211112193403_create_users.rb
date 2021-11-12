class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :role_id
      t.string :password_digest
      t.string :avatar_url
      t.integer :team_id

      t.timestamps
    end
  end
end
