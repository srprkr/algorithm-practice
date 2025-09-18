class Solution:
    def checkDivisibility(self, n: int) -> bool:
        digits = str(n)  # Convert to string to get individual digits
        
        digit_sum = 0
        digit_product = 1
        
        for digit in digits:
            digit_int = int(digit)
            digit_sum += digit_int
            digit_product *= digit_int
        
        return n % (digit_sum + digit_product) == 0