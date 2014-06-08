class CreateWorkdays < ActiveRecord::Migration
  def change
    create_table :workdays do |t|
      t.decimal :hours_worked
      t.string :location
      t.belongs_to :worker
      t.timestamps
    end
  end
end
