class CreateCatches < ActiveRecord::Migration[6.0]
  def change
    create_table :catches do |t|
      t.string :species
      t.integer :weight
      t.integer :length
      t.string :bait

      t.timestamps
    end
  end
end
