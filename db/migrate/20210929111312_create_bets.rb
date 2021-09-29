class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.integer :bet_maker
      t.integer :bet_receiver
      t.string :name
      t.string :category
      t.datetime :start_date, default: -> { 'CURRENT_TIMESTAMP' }
      t.date :end_date
      t.float :wager_amount
      t.string :status, default: "open"
      t.text :rules

      t.timestamps
    end
  end
end
