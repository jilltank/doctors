class DropTable < ActiveRecord::Migration
  def up
  	drop_table :welcomes
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
