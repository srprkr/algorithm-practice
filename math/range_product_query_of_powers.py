.class Solution:
    def productQueries(self, n: int, queries: List[List[int]]) -> List[int]:
        binary = []
        mod = 10 ** 9 + 7
        rep = 1
        while n != 0:
            if n % 2 == 1:
                binary.append(rep)
            n = n // 2
            rep *= 2

        ans = []
        prods = []

        prod = 1
        for rep in binary:
            prod *= rep
            prods.append(prod)

        for l, r in queries:
            ans.append((prods[r + 1] // prods[l]) % mod)
        return ans