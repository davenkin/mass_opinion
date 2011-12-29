class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.text :content, :null => false
      t.date :created_date, :null => false
      t.references :questionnaire
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end

end
