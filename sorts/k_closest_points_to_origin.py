class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        def distance(point):
            return point[0] ** 2 + point[1] ** 2

        def quickselect(l, r):

            if l >= r:
              return

            pivot_index = random.randint(l,r)
            points[pivot_index], points[r] = points[r], points[pivot_index]
            pivot = distance(points[r])

            p = l
            for i in range(l, r):
                if distance(points[i]) <= pivot:
                    points[i], points[p] = points[p], points[i]
                    p += 1

            points[p], points[r] = points[p], points[r]

            if p < k:
                return quickselect(l, p - 1)
            elif p > k:
                return quickselect(p + 1, r)
            else:
                return points[:k]

        return points[:k] if len(points) == k else quickselect(0, len(points) - 1)