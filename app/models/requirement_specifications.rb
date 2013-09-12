class RequirementSpecifications < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :requirements,:dependent =>:destroy
end
