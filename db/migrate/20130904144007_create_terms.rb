class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :content
      t.integer :order

      t.timestamps
    end
  end
end
