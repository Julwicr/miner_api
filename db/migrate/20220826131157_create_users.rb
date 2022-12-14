class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :telephone

      t.timestamps
    end
  end
end
