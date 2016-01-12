class Task < ActiveRecord::Base
  belongs_to :project, polymorphic: true
end
