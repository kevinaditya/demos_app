class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :content
      t.integer :order
      t.timestamps
    end
  end
  
  def up
    change_column :terms, :content, :text
  end
  def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :your_table, :your_column, :text
  end

end
