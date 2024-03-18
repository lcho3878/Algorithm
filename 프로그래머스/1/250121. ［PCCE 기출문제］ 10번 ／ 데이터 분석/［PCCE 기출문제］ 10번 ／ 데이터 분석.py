def solution(data, ext, val_ext, sort_by):
    attributes  = ["code", "date", "maximum", "remain"]
    ext_index = attributes .index(ext)
    sort_by_index = attributes .index(sort_by)
    answer = sorted(list(filter(lambda x: x[ext_index] < val_ext, data)), key= lambda x: x[sort_by_index])
    return answer