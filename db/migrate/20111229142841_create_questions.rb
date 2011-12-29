class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :name, :null => false
      t.references :questionnaire
      t.timestamps
    end
  end

  def down
    drop_table :questions
  end

end
