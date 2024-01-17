def solution(bandage, health, attacks):
    last_time = attacks[-1][0]
    bandage_time = bandage[0]
    recovery = bandage[1]
    bonus = bandage[2]
    time_count = 0
    current_health = health
    for i in range(0, last_time):
        time = i + 1
        attack_time = attacks[0][0]
        if time == attack_time:
            attack = attacks.pop(0)
            time_count = 0
            current_health -= attack[1]
            if current_health <= 0:
                return -1
        else:
            time_count += 1
            current_health = min(health, current_health + recovery)
            if time_count == bandage_time:
                current_health = min(health, current_health + bonus)
                time_count = 0

    return current_health if current_health > 0 else -1