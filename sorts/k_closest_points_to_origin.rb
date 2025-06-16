def k_closest(points, k)
    def distance(point)
        point[0] ** 2 + point[1] ** 2
    end

    def quickselect(points, k, left, right)

        return points[0...k] if left >= right

        pivot_index = rand(left..right)
        points[pivot_index], points[right] = points[right], points[pivot_index]
        pivot = distance(points[right])

        store_index = left
        (left...right).each do |i|
            if distance(points[i]) <= pivot
                points[i], points[store_index] = points[store_index], points[i]
                store_index += 1
            end
        end

        points[store_index], points[right] = points[store_index], points[right]

        if store_index > k
            quickselect(points, k, left, store_index - 1)
        elsif store_index < k
            quickselect(points, k, store_index + 1, right)
        else
            points[0...k]
        end
    end

    return points[0...k] if points.size == k
    quickselect(points, k, 0, points.size - 1)
end