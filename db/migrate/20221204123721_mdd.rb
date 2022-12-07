class Mdd < ActiveRecord::Migration[5.2]
  def up
    	drop_table :communities
    end
    
    def down
    	fail ActiveRecord::IrreversibleMigration
    end
end
