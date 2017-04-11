class AddGinToLocationInListing < ActiveRecord::Migration[5.0]
  def change
    add_index :listings, :location, using: 'btree'
  end
end
