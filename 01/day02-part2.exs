defmodule CaptchaSolver do
    def get_value([head1 | tail1], [head2 | tail2], accumulator) do
      if head1 == head2 do
        get_value(tail1, tail2, accumulator + (head1 * 2))
      else
        get_value(tail1, tail2, accumulator)
      end
    end

    def get_value([], [], accumulator) do
        accumulator
    end
end


nums = File.read!("input.txt") 
        |> String.graphemes
        |> Enum.map(&(String.to_integer(&1)))

total_nums = length(nums)
first_half = Enum.slice(nums, 0, div(total_nums, 2))
last_half = Enum.slice(nums, div(total_nums, 2), total_nums)

IO.puts CaptchaSolver.get_value(first_half, last_half, 0)