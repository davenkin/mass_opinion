class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name, :null => false
      t.string :password, :null => false
      t.string :email, :null => false
      t.date :register_date, :null => false
      t.timestamps
    end
# can create fixture here
#    User.create(:name => 'davenkin', :password => '123456', :email => 'davenkin@163.com', :register_date =>Time.now)
  end

  def down
    drop_table :users
  end
end
