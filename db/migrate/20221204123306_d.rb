class D < ActiveRecord::Migration[5.2]
  def up

	  	drop_table :posts
		  drop_table :f_posts
		  drop_table :tips
    end
    
    def down
    	fail ActiveRecord::IrreversibleMigration
    end
end
