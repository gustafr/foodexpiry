class Product < ApplicationRecord
  include PgSearch
  pg_search_scope :search_full_text, against: [
                                       [:name, 'A'],
                                       [:description, 'B']
                                   ]

  def self.import_product(barcode)
    request_uri = 'http://api.dabas.com/DABASService/V2/article/gtin/'
    request_query = barcode
    request_end_uri = "/json?apikey=#{ENV['DABAS_API']}"
    uri = URI("#{request_uri}#{request_query}#{request_end_uri}")
    @response = JSON.parse(Net::HTTP.get(uri))
    #img = Product.image_url(@response)
    Product.create(name: @response["Artikelbenamning"],
                   barcode: @response["GTIN"],
                   best_before: @response["TotalHallbarhetAntalDagar"])
  end

end
