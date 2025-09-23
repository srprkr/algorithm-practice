# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)

    count_hash = Hash.new(0)

    list1.each do |str|
        if list2.include?(str)
            count_hash[str] += list1.index(str)
            count_hash[str] += list2.index(str)
        end
    end

    count_hash.select { |k, v| v == count_hash.values.min }.keys
end