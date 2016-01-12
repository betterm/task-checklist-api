# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.create(name: "My project")
Task.create(name: "Task name", priority: "1", complete: "true", project_id: project.id, deadline: (Time.now.to_datetime) )
Task.create(name: "Task", priority: "2", complete: "false", project_id: project.id, deadline: (Time.now.to_datetime) )
project1 = Project.create(name: "Another project")
Task.create(name: "Task name", priority: "3", complete: "false", project_id: project1.id, deadline: (Time.now.to_datetime) )
Task.create(name: "Task", priority: "4", complete: "true", project_id: project1.id, deadline: (Time.now.to_datetime) )



