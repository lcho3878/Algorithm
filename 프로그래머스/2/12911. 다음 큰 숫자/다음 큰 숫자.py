def solution(n):
    n_bin = bin(n)[2:]
    while True:
        n += 1
        next_bin = bin(n)[2:]
        if next_bin.count("1") != n_bin.count("1"):
            continue
        else:
            return int(next_bin, 2)

    return 0