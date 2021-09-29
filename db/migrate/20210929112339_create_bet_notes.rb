class CreateBetNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :bet_notes do |t|
      t.references :bet, null: false, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
