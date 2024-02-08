def solution(players, callings):
    result = {}
    for i in range(len(players)):
        player = players[i]
        result[player] = i

    for i in range(len(callings)):
        calling = callings[i]
        index = result[calling]
        result[calling] -= 1
        result[players[index-1]] += 1
        players[index - 1], players[index] = players[index], players[index - 1]
    return players