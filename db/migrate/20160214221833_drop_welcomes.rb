class DropWelcomes < ActiveRecord::Migration
  def down
  	drop_table :welcomes
  end
end
