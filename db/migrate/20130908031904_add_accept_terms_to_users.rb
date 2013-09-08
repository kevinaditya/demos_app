class AddAcceptTermsToUsers < ActiveRecord::Migration
  def change
     add_column :users, :accept_terms, :datetime
  end
end
