class CreateWisdomQuestions < ActiveRecord::Migration
  def change
    create_table :wisdom_questions do |t|
      t.string :title
      t.text :text
      t.integer :row_order
      t.integer :topic_id

      t.timestamps
    end
    add_index :wisdom_questions, :topic_id
  end
end
