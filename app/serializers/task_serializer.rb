class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :complete, :priority, :deadline, :project_id
end
