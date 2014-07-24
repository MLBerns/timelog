class CreateCalendarDates < ActiveRecord::Migration
  def change
    create_table :calendar_dates do |t|

      t.timestamps
    end
  end
end
