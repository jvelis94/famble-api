class FixingMisspelledColumnInNotificationTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :notifications, :recipiend_id
    add_column :notifications, :recipient_id, :integer
  end
end
