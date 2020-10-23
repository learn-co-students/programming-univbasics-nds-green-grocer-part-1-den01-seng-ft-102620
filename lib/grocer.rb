require 'pry' 


def find_item_by_name_in_collection(name, collection)
  collection.each do |item_info|
    if name == item_info[:item]
      return item_info
    end
  end
  nil
end


def consolidate_cart(cart)
  updated_cart = []
  counter = 0
  while counter < cart.length 
    cart_item = find_item_by_name_in_collection(cart[counter][:item], updated_cart)
    if cart_item != nil
      cart_item[:count] += 1
      else 
        cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      } 
      updated_cart << cart_item
    end
    counter += 1
  end
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.


#def consolidate_cart(cart)
#  cart.each_with_object([]) do |(item_info), updated_cart|
#    if updated_cart[][:item].include?(item_info[:item])
#      updated_cart[:count] += 1
#    else 
#      updated_cart << {
#        :item => item_info[:item],
#        :price => item_info[:price],
#        :clearance => item_info[:clearance],
#        :count => 1
#      }
#    end
#  end
#end
  