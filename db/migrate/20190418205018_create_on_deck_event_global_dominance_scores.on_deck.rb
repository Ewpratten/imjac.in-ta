# This migration comes from on_deck (originally 20190418203418)
class CreateOnDeckEventGlobalDominanceScores < ActiveRecord::Migration[5.2]
  def change
    create_table :on_deck_event_global_dominance_scores do |t|
      t.string :team
      t.string :event
      t.integer :score
      t.integer :rank

      t.timestamps
    end
    add_index :on_deck_event_global_dominance_scores, :team, unique: true
  end
end
