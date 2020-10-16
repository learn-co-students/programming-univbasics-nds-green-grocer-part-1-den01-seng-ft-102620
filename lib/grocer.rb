require 'pry'

def find_item_by_name_in_collection(name, collection)
  match_message = nil
collection.each do |key, value|
  if key[:item] == name
    match_message = key
      break
    end
  end
  return match_message
end

def consolidate_cart(cart)
 consolidated_cart = []
 i = 0
 cart.each do |key, value|
   key[:count] = 1
   consolidated_cart << key
 end

 duplicates = consolidated_cart.reject{|element|consolidated_cart.count(element) < 2}

 consolidated_cart.each do |key, value|
   if key = duplicates[i]
      key[:count] += 1
      i += 1
      end
    end
    final_cart = consolidated_cart.uniq

    final_cart.each do |key, value|
    if key[:count] > 1
       key[:count] -= 1
     end
  end
 p final_cart
end
#binding.pry
#puts "Hello, World"
