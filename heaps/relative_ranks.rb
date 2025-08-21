require 'algorithms'

# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
    return [] if score.empty?

    # Create ranks array with medals and numerical ranks
    ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"] + (4..score.size).map(&:to_s)

    # Create max heap
    max_heap = Containers::MaxHeap.new(score)

    # Extract scores in descending order and assign ranks
    rank_map = {}
    (0...score.size).each do |i|
        top_score = max_heap.pop
        rank_map[top_score] = ranks[i]
    end

    # Build result in original order
    result = score.map { |num| rank_map[num] }
    result
end