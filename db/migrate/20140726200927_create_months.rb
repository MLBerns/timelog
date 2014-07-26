class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.belongs_to :calendar
      t.integer :month_num
      t.string :month_name
      t.timestamps
    end
  end
end
