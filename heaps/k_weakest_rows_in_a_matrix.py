class Solution:
    def kWeakestRows(self, mat: List[List[int]], k: int) -> List[int]:
        soldier_counts = sorted(
            [(row.count(1), i) for i, row in enumerate(mat)]
        )

        return [index for count, index in soldier_counts[:k]]