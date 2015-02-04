class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.string :deed
      t.integer :to_id
      t.integer :from_id

      t.timestamps null: false
    end
  end
end
