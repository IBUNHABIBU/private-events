class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|
      t.references :user
      t.references :event
      t.string :email
      t.timestamps
    end
    add_index :event_attendances, ["event_id","user_id"]
  end
end
