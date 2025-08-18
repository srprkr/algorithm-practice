class Solution:
    def maximum69Number (self, num: int) -> int:
        if "6" in str(num):
            return int(str(num).replace("6", "9", 1))
        else:
            return num