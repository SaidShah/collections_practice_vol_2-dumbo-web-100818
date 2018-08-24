# your code goes here
require "pry"
def begins_with_r (given_array)
  
 new_array =  given_array.sort 
  
  if new_array[0].start_with?("r") && new_array[given_array.length-1].start_with?("r")
  return  true
  else 
   return false 
  end
end

def contain_a(given_array)
  counter = 0
  new_array = []
  while counter < given_array.length do
    if given_array[counter].include?("a")
      new_array.push(given_array[counter])
    end
      counter +=1 
end
new_array
end


def first_wa(given_array)
  given_array.detect {|a| a["wa"]}
end

def remove_non_strings(given_array)
  
  given_array.delete_if{|each| each.class != String}
end

def count_elements(given_array)

  given_array.uniq.each do |key_type|
    counter = 0 
    given_array.each do |looking_for, value_found|
      if looking_for == key_type
        counter +=1 
        end
     end
   key_type[:count]= counter
  end
end

def merge_data(first_data_struct, second_data_struct)
  new_data = []
  second_data_struct.each do |val|
    val.each do |key2,val2|
      first_data_struct.each do |sec_key|
        if sec_key.values[0]==key2 
       new_data << sec_key.merge(val2)
        end
      end
    end
  end
  new_data
end


def find_cool(given_array)
  cool=[]
given_array.each do |values|
  values.each { |looking_for, value_needed| cool << values if looking_for == :temperature && value_needed =="\bcool\b".match}
end
cool
end




















