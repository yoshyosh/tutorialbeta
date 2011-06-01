# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Unit.delete_all
Unit.create([{:title => 'Try Ruby', :description => '15 min interactive tutorial', :image => 'tryruby.png', :stage_id => 1, :lesson_id => 1},
					{:title => 'Rails Install', :description => 'One click installer Windows only', :image => 'railsinstall_w.png', :stage_id => 1, :lesson_id => 1},
					{:title => 'Text Editor', :description => 'To help you write code easier', :image => 'texteditor.png', :stage_id => 1, :lesson_id => 1},
					{:title => 'Learn to Program', :description => 'Quick tutorial on coding in Ruby', :image => 'learn_to_program.png', :stage_id => 1, :lesson_id => 1},
					{:title => 'Rails for Zombies', :description => 'Fun interactive tutorial with Rails', :image => 'rails_for_zombies.png', :stage_id => 2, :lesson_id => 1},
					{:title => 'Ruby on Rails Tutorial', :description => 'Learn Rails by Example', :image => 'mhartl.png', :stage_id => 2, :lesson_id => 1},
					{:title => 'Getting Started with Rails', :description => 'How to make a basic blog', :image => 'railsguides_blog.png', :stage_id => 2, :lesson_id => 1},
					{:title => 'Railscasts', :description => 'Detailed video tutorials on Rails', :image => 'railscasts.png', :stage_id => 2, :lesson_id => 1},
					{:title => 'Agile Web Dev. with Rails', :description => 'The basics of Rails to the advanced', :image => 'agileweb.png', :stage_id => 3, :lesson_id => 1}])