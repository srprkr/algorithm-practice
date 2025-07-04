require 'algorithms'
# @param {String} s
# @return {String}
def frequency_sort(s)
    #   create a hashmap with letters as keys and values as frequency
    freq_count = Hash.new(0)
    s.each_char { |char| freq_count[char] += 1 }
    
    #   create the max heap from the hashmap result will be an array
    heap = Containers::MaxHeap.new
    freq_count.each do |char, count|
      heap.push([count, char])
    end

    result = ""

    #   iterate the hashmap to collect values from the keys
    
    until heap.empty?
      count, char = heap.pop

      #   populate new str
      result << char * count
    end

    result
end