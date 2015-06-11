class CreateModel < ActiveRecord::Migration
  def up
  	create_table :models do |t|
  		t.string :name
  		t.string :pwd
      t.string :email
  	end
    create_table :time_sheets do |t|
      t.string :user
      t.string :email
      t.string :ay
    end
  end
 
  def down
  	drop_table :models
    drop_table :time_sheets
  end
end