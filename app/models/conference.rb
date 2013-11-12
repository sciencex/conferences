class Conference < ActiveRecord::Base
	has_many :divisions, dependent: :destroy
	has_many :teams, dependent: :destroy
end
