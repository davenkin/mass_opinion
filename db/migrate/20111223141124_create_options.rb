class CreateOptions < ActiveRecord::Migration
  def up
    create_table :options do |t|
      t.string :name, :null =>false
      t.integer :vote_count, :default => 0
      t.references :question
      t.timestamps
    end
  end

  def down
    drop_table :options
  end
end
