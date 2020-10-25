require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |item|
  if item[:item]!=name
  
    
  else 
    return item
 # binding.pry

 
 
end
end
end
def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart=[]
  cart.map do |items|
    #binding.pry
   new_cart_item = find_item_by_name_in_collection(items,cart)
   if new_cart_item != nil 
     new_cart_item[:count] += 1
     #issue right here
   else
     new_cart_item= {
       item: items[:item],
       price: items[:price],
       clearance: items[:clearance],
       :count=> 1
       
     }
   new_cart << new_cart_item

end

end
new_cart
end
 