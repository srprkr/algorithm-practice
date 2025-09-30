# From https://algo.monster/problems/find_all_anagrams

def find_all_anagrams(original, check)
    match_indexes = []
    
    left = 0
    right = check.size - 1
    while right <= original.size
        if original[left..right].chars.sort == check.chars.sort
            match_indexes << left
        end
        left += 1
        right += 1
    end

    match_indexes
end