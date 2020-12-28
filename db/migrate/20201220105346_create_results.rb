class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :count
      t.integer :correct
      t.integer :incorrect
      t.timestamps
    end

    create_table :results_words do |t|
      t.integer :word_id
      t.integer :attemps
      t.integer :correct
      t.timestamps
    end
  end
end
