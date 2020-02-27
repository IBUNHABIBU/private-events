class CreateEventAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendees do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
