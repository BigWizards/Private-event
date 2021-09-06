class EventAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendances do |t|
      t.references :attendee, foreign_key: true
      t.references :attended_event, foreign_key: true
    
      t.timestamps
    end
  end
end
