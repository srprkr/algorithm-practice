# @param {Integer[]} cards
# @return {Integer}
def minimum_card_pickup(cards)
    window = Hash.new(0)
    shortest = cards.size + 1
    left = 0
    
    cards.each_with_index do |card, right|
        window[card] += 1
        while window[card] == 2
            shortest = [shortest, right - left + 1].min
            window[cards[left]] -= 1
            left += 1
        end
    end
    return shortest == cards.size + 1 ? -1 : shortest
end