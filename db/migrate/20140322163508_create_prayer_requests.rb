class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :prayer_requests, [:user_id, :created_at]
  end
end
