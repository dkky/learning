class Listing < ApplicationRecord
  include PgSearch
  pg_search_scope :search_full_text,
    :against => :location,
  :using => {
    :tsearch => {:prefix => true},
  }
end
