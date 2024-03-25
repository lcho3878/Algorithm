if __name__ == '__main__':
    n = int(input())
    my_cards = list(map(int, input().split()))
    m = int(input())
    my_dict = dict()
    for card in my_cards:
        my_dict[card] = 1
    cards = list(map(int, input().split()))
    for card in cards:
        if card in my_dict:
            print(1, end=" ")
        else:
            print(0, end=" ")