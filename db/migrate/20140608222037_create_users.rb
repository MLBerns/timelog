class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.decimal :wage
      t.string :password_hash
      t.boolean :is_punched_in, :default => false
      t.timestamps
    end
  end
end
