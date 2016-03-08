module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product'

        private

        # Only allow a trusted parameter "white list" through.
        def product_params
          params.require(:product).permit(:title, :date, :photo_id, :description)
        end
      end
    end
  end
end
