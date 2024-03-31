def solution(board, moves):
    answer = 0
    def moveCrain(move, board):
        for i in range(len(board)):
            if board[i][move-1] == 0:
                continue
            else:
                return [i, move - 1, board[i][move-1]]
        return [-1, -1, 0]
    basket = []
    for move in moves:
        i, j, doll = moveCrain(move, board)
        if i == -1:
            continue
        else:
            board[i][j] = 0
            if len(basket) == 0:
                basket.append(doll)
            else:
                if basket[-1] == doll:
                    basket.pop()
                    answer += 2
                else:
                    basket.append(doll)
    return answer