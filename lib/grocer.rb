require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if name == items[:item]
      return items
    end
  end
  return nil
end

=begin
def consolidate_cart(cart)
  answer = []
  i = 0 
  while i < cart.length 
    new_item = find_item_by_name_in_collection(cart[i][:item], answer)
    if new_item 
      new_item[:count] += 1 
    else
      new_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1 
      }
      answer << new_item
    end
    i += 1 
  end
  answer
end
=end

def consolidate_cart(cart)
  index = 0
  new_cart = []
  
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end


