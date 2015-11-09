class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.text :day
      t.text :content
      t.references :bar, index: true, foreign_key:true

      t.timestamps null: false
    end
    add_index :deals, [:bar_id, :created_at]
  end
end
