class User < ApplicationRecord
  enum user_role: [:brand, :influencer]

  has_many :influencer_campaigns,  class_name:  "Campaign",
    foreign_key: "brand_id",
    dependent:   :destroy

  has_many :brand_relationships, class_name:  "Campaign",
    foreign_key: "influencer_id",
    dependent:   :destroy

  has_many :brands, through: :influencer_campaigns,  source: :brand
  has_many :infleuncers, through: :brand_relationships, source: :influencer

  def book(other_user)
    influencer_campaigns.create(influencer_id: other_user.id)
  end

  # Unfollows a user.
  def unbook(other_user)
    influencer_campaigns.find_by(influencer_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def booking(other_user)
    following.include?(other_user)
  end
end
