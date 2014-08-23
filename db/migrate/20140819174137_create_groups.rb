class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name
    	t.string :password_digest, :default => nil
        
        t.timestamps
    end

    add_index :groups, "name"

  end
end
