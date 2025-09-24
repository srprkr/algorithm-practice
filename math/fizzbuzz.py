class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        res = []
        for num in range(1, n + 1):
            if num % 5 == 0 and num % 3 == 0:
                res.append("FizzBuzz")
            elif num % 5 == 0:
                res.append("Buzz")
            elif num % 3 == 0:
                res.append("Fizz")
            else:
                res.append(num.to_s)
            

        return res