class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string  :phone_id
    	t.integer :reports_count
    	
      	t.timestamps
    end

    add_index :users, "phone_id"

  end
end
