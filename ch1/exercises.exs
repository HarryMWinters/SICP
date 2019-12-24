defmodule Scratch do
  def recFact(1) do
    1
  end

  def recFact(n) do
    n * iterFact(n - 1)
  end

  def iterFact(1) do
    1
  end

  def iterFact(n) do
    iterFact(n, 1)
  end

  def iterFact(1, accum) do
    accum
  end

  def iterFact(remaining, accum) do
    accum = accum * remaining
    remaining = remaining - 1
    iterFact(remaining, accum)
  end

  def fibo(1) do
    1
  end

  def fibo(2) do
    1
  end

  def fibo(n) do
    fibo(fibo(1), fibo(2), n - 3)
  end

  def fibo(pprevious, previous, 0) do
    pprevious + previous
  end

  def fibo(pprevious, previous, n) do
    sum = pprevious + previous
    n = n - 1
    fibo(previous, sum, n)
  end

  def badFibo(1) do
    1
  end

  def badFibo(2) do
    1
  end

  def badFibo(n) do
    badFibo(n - 1) + badFibo(n - 2)
  end

  def foo11(n) do
    if n < 3 do
      n
    else
      foo11(2, 1, 0, n - 2)
    end
  end

  def foo11(prev_fmin1, prev_fmin2, prev_fmin3, n) do
    new_val = prev_fmin1 + 2 * prev_fmin2 + 3 * prev_fmin3
    n = n - 1

    if n == 0 do
      new_val
    else
      foo11(new_val, prev_fmin1, prev_fmin2, n)
    end
  end

  # def pascalsTriangle(height) do
  #   pascalsTriangle([1], height)
  # end

  def insertionSort(list) do
    insertionSort([], list)
  end

  def insertionSort(sorted, []) do
    sorted
  end

  def insertionSort(sorted, [sortee | unsorted_remainder]) do
    new_sorted = insert([], sorted, sortee)
    insertionSort(new_sorted, unsorted_remainder)
  end

  def insert([], [], insertee) do
    [insertee]
  end

  def insert(lessers, [], insertee) do
    lessers ++ [insertee]
  end

  def insert(lessers, [head | tail], insertee) do
    if insertee < head do
      lessers ++ [insertee, head] ++ tail
    else
      insert(lessers ++ [head], tail, insertee)
    end
  end
end
