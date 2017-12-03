class Product < ApplicationRecord
  include PgSearch
  pg_search_scope :search_full_text, against: [
                                       [:name, 'A'],
                                       [:description, 'B']
                                   ]
end
