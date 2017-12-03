defmodule CaptchaSolver do
    def get_value([head | tail], accumulator) do
        if (head == List.first(tail)) do
            get_value(tail, head + accumulator)
        else
            get_value(tail, accumulator)
        end
    end

    def get_value([], accumulator) do
        accumulator
    end
end


nums = File.read!("input.txt") 
        |> String.graphemes
        |> Enum.map(&(String.to_integer(&1)))

startValue = if List.first(nums) == List.last(nums), do: List.first(nums), else: 0
result = CaptchaSolver.get_value(nums, startValue)

IO.puts result