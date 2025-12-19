# @param {Integer[][]} points
# @return {Boolean}
def is_boomerang(points)
    x1, y1 = points[0]
    x2, y2 = points[0]
    x3, y3 = points[0]

    ((y2 - y1) * (x3 - x2)) != ((y3 - y2) * (x2 - x1))
end