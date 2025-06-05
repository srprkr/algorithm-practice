class Node
  attr_accessor :key, :value, :cnt, :prev, :next
  
  def initialize(key, val, freq = 1)
    @key = key
    @value = val
    @cnt = 1
    @prev = nil
    @next = nil
  end
end

class LFUCache
  def initialize(capacity)
    @cache_map = {}
    @freq_map = {}
    @min_freq = 0
    @capacity = capacity
  end

  def get(key)
    return -1 unless @cache_map.key?(key)
    
    node = @cache_map[key]
    res = node.value
    update_freq(node)
    res
  end

  def put(key, value)
    return if @capacity == 0
    
    if @cache_map.key?(key)
      node = @cache_map[key]
      node.value = value
      update_freq(node)
      return
    end

    if @cache_map.size == @capacity
      node = @freq_map[@min_freq][1].prev
      @cache_map.delete(node.key)
      remove(node)
      
      if @freq_map[@min_freq][0].next == @freq_map[@min_freq][1]
        @freq_map.delete(@min_freq)
      end
    end

    node = Node.new(key, value)
    @cache_map[key] = node
    @min_freq = 1
    add(node, 1)
  end

  private

  def add(node, freq)
    unless @freq_map.key?(freq)
      head = Node.new(-1, -1)
      tail = Node.new(-1, -1)
      head.next = tail
      tail.prev = head
      @freq_map[freq] = [head, tail]
    end

    head = @freq_map[freq][0]
    temp = head.next
    node.next = temp
    node.prev = head
    head.next = node
    temp.prev = node
  end

  def remove(node)
    del_prev = node.prev
    del_next = node.next
    del_prev.next = del_next
    del_next.prev = del_prev
  end

  def update_freq(node)
    old_freq = node.cnt
    node.cnt += 1
    remove(node)

    if @freq_map[old_freq][0].next == @freq_map[old_freq][1]
      @freq_map.delete(old_freq)
      @min_freq += 1 if @min_freq == old_freq
    end

    add(node, node.cnt)
  end
end