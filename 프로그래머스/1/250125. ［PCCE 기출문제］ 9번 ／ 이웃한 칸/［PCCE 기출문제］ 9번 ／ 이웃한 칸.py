def solution(board, h, w):
    answer = 0
    count = 0
    color = board[h][w]
    n = len(board)
    dh, dw = [0, 1, -1, 0], [1, 0, 0, -1]
    for i in range(len(dh)):
        h_check = h + dh[i]
        w_check = w + dw[i]
        if h_check >= 0 and h_check < n and w_check >= 0 and w_check < n:
            if board[h_check][w_check] == color:
                count += 1
    return count 