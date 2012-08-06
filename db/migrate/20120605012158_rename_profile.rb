class RenameProfile < ActiveRecord::Migration
   def self.up
    create_table :profiles do |t|
      t.integer  :user_id
      t.string   :firstname
      t.string   :lastname
      t.datetime :created_at, :null => false
      t.datetime :updated_at, :null => false
      t.enum  :sex ,:limit => [:Male, :Female] 
    end
  end
  
  def self.down
    drop_table :profiles
  end
end
