require 'pry'
def find_item_by_name_in_collection(name, collection)
  answer = []
  collection.each{|key, value|
  key.each {|r,d|
  if name == d 
    answer[0] = key
    return answer[0]
  end
  
  }
  }
 answer[4]
end
def consolidate_cart(cart)
  answer= []
  cart.each {|key, value|
  key.each {|bkey, bval|
    
      if bkey == :item
      answer.push(key)
      end
  }
  }
  answer.each{|akey|
  
  if akey[:count]
    akey[:count] +=1
  else  
    akey[:count] = 1
  end
  }
  
answer
end


  