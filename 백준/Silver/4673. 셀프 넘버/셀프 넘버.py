if __name__ == '__main__':
    numbers = set(range(1, 10000))
    remove_number = set()
    for number in numbers:
        for n in str(number):
            number += int(n)
        remove_number.add(number)
    self_numbers = numbers - remove_number
    for number in sorted(self_numbers):
        print(number)