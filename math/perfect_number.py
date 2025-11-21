class Solution:
    def checkPerfectNumber(self, num: int) -> bool:
        if num <= 1:
            return False
        
        divisors = [1]
        
        # Only check up to sqrt(num)
        for n in range(2, int(num**0.5) + 1):
            if num % n == 0:
                divisors.append(n)
                divisors.append(num // n)
        
        return sum(divisors) == num      