class Group < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many 				:deadlines

def subscribers_count
	return self.users.count
end

end
