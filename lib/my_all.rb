require 'pry'

def my_all?(collection)
    i = 0
    yielded = []
    while i < collection.length
        yielded << yield(collection[i])
        i = i + 1 
        
    end 

    if yielded.include?(false)
        false
    else
        true
    end 
end