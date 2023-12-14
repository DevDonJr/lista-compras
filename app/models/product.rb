class Product < ApplicationRecord
    belongs_to :list

    after_save :update_list_status

    def update_list_status
        list.update_status_if_all_products_purchased if list.update_status_if_all_products_purchased
    end
end
