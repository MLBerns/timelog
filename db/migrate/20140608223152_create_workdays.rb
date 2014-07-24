class CreateWorkdays < ActiveRecord::Migration
  def change
    create_table :workdays do |t|
      t.time :time_in
      t.time :time_out
      # maybe only needs to know total time?
      t.integer :month
      t.integer :date
      t.string :location
      t.belongs_to :worker
      t.timestamps
    end
  end
end
