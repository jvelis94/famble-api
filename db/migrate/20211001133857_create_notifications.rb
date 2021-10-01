class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :actor_id
      t.integer :recipiend_id
      t.datetime :read_at
      t.string :action
      t.integer :notifiable_id
      t.integer :notifiable_type

      t.timestamps
    end
  end
end
