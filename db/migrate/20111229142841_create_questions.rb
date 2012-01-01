class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :name, :null => false
      t.date :created_date, :null => false
      t.references :user
      t.timestamps
    end
  end

  def down
    drop_table :questions
  end

end
