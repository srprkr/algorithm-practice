class Solution:
    def compress(self, chars: List[str]) -> int:
        walker, runner = 0, 0

        while runner < len(chars):
            chars[walker] = chars[runner]
            count = 1

            while runer + 1 < len(chars) and chars[runner] == chars[runner + 1]:
                runner += 1
                count += 1

            if count > 1:
                for c in str(count):
                    walker += 1
                    chars[walker] = c

            runner += 1
            walker += 1
        
        return walker