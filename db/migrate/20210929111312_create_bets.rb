class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.string :name
      t.string :category
      t.datetime :start_date, default: -> { 'CURRENT_TIMESTAMP' }
      t.date :end_date
      t.float :wager_amount
      t.string :status, default: "open"
      t.text :rules
      
      t.integer :bet_maker_id
      t.integer :bet_receiver_id
      t.timestamps
    end
  end
end
