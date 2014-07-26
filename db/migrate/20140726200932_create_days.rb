class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.belongs_to :month
      t.integer :date
      t.string :day_of_week
      t.timestamps
    end
  end
end
