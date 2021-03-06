class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :name, :null => false
      t.timestamps
    end

    create_table :categories_questions, :id => false do |t|
      t.integer :category_id, :null => false
      t.integer :question_id, :null => false
    end
  end

  def down
    drop_table :categories
    drop_table :categories_questions
  end
end
