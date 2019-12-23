def pascalTriangle(target_depth):
    return _new_row([1], 1, target_depth)


def _new_row(row, cur_depth, target_depth):
    print(" ".join([str(i) for i in row]).center(150, " "))
    if cur_depth == target_depth:
        return row
    next_row = [1]
    for i in range(len(row)):
        if i > 0:
            next_row.append(row[i] + row[i - 1])
    next_row.append(1)
    return _new_row(next_row, cur_depth + 1, target_depth)


def foo(height):
    for depth in range(height):
        row = pascalTriangle(depth)

