   
module Callbacks
   class MarkDeleted
      def self.before_save(product)
         product.email = product.email.upcase
      end
   end
end