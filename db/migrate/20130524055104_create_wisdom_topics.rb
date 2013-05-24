class CreateWisdomTopics < ActiveRecord::Migration
  def change
    create_table :wisdom_topics do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.integer :row_order

      t.timestamps
    end
  end
end
