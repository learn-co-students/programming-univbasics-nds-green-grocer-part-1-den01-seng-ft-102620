require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if name == items[:item]
      return items
    end
  end
  return nil
end

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



