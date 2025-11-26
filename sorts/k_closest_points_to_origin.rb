def k_closest(points, k)
    points.sort_by { |pt| pt[0]**2 + pt[1]**2 }.first(k)
end