class Stroll < ApplicationRecord
	belongs_to :dog, optional: true
	belongs_to :dogsitter, optional: true
end
