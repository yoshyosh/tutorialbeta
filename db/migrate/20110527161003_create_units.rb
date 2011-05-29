class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
	  t.string :title
	  t.string :description
	  t.string :image
	  t.string :stage_id
	  t.string :lesson_id
	  

      t.timestamps
    end
  end

  def self.down
    drop_table :units
  end
end
