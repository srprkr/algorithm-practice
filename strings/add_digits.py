class Solution:
    def addDigits(self, num: int) -> int:
    digit_sum = 0
    for digit in str(num):
        digit_sum += int(digit)
    
    return self.addDigits(digit_sum) if len(str(digit_sum)) > 1 else digit_sum