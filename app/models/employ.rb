class Employ < ApplicationRecord
	has_many :employee_details, dependent: :destroy
	paginates_per 25
end
