class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.decimal :wage, :default => 0.00
      t.string :password_hash
      t.boolean :is_punched_in, :default => false
      t.datetime :punch_in_time, :default => nil
      t.timestamps
    end
  end
end
