class List < ApplicationRecord
    validates_presence_of :name
    validates_uniqueness_of :name
    has_many :products, dependent: :destroy
    
    def update_status_if_all_products_purchased
        if products.all? { |product| product.purchased? }
          update(status: 'all_purchased')
        else
          update(status: 'partial_purchased')
        end
    end
end