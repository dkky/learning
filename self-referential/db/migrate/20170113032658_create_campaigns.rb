class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :details
      t.integer :brand_id
      t.integer :influencer_id
    end
  end
end
