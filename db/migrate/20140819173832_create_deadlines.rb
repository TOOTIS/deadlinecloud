class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
    	t.references :user
    	t.references :group
    	t.string     :title
    	t.text       :description
    	t.integer    :priority, :default => 0
    	t.datetime   :finish_on
        t.timestamps
    end

    add_index :deadlines, ["user_id", "group_id"]

  end
end
