if __name__ == '__main__':
    s = input()
    s_set = set()
    for i in range(len(s)):
        for j in range(i, len(s)+1):
            s_set.add(s[i:j])
    print(len(s_set)-1)