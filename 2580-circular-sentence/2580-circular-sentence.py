class Solution:
    def isCircularSentence(self, sentence: str) -> bool:
        temp= sentence.split(' ')
        l= len(temp)
        temp= temp + temp[0:l]
        for i in range(0, l):
            ln= len(temp[i])
            if temp[i][ln-1] != temp[i+1][0]:
                return False
        return True
        