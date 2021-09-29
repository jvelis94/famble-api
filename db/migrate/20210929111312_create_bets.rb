class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.integer :bet_maker
      t.integer :bet_receiver

      t.timestamps
    end
  end
end
