def solution(N):
    answer = 0
    bin_N = bin(N)[2:]
    for char in bin_N:
        if char == "1":
            answer += 1

    return answer
