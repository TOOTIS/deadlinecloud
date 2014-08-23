class User < ActiveRecord::Base
	has_many 				:deadlines
	has_and_belongs_to_many :groups
end
