class InitialMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :from, null: false
      t.string :to, null: false
      t.timestamps
    end

    create_table :users do |t|
      t.string :name, null: false
      t.string :login, null: false
      t.string :password, null: false
      t.timestamps
    end

  end
end
