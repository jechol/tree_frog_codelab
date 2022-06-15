defmodule TreeFrogTest do
  use ExUnit.Case
  doctest TreeFrog

  test "just number" do
    assert 100 == TreeFrog.calc(100)
  end

  test "simple calc" do
    # +
    assert 1 == TreeFrog.calc(2 + 1)
    assert -1 == TreeFrog.calc(1 + 2)

    # -
    assert 3 == TreeFrog.calc(2 - 1)
    assert 3 == TreeFrog.calc(1 - 2)

    # *
    assert 2.5 == TreeFrog.calc(5 * 2)
    assert 0.4 == TreeFrog.calc(2 * 5)

    # /
    assert 10 == TreeFrog.calc(5 / 2)
    assert 10 == TreeFrog.calc(2 / 5)
  end

  test "complex calc" do
    assert 30 == TreeFrog.calc(10 - 10 / 2)
    assert 40 == TreeFrog.calc((10 - 10) / 2)

    assert 12 == TreeFrog.calc((10 - 10) + (2 / 4))
  end
end
