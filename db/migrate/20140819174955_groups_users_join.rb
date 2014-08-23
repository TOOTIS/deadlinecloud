class GroupsUsersJoin < ActiveRecord::Migration
  def change
  	create_table :groups_users, :id => false do |t|
  		t.references :group
  		t.references :user
  		t.boolean    :is_admin, :default => false
  	end
  	add_index :groups_users, ["group_id", "user_id"]
  end
end
