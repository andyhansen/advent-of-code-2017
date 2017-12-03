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


nums = Enum.map(String.graphemes(File.read!("input.txt")), fn x -> String.to_integer(x) end)
startValue = if List.first(nums) == List.last(nums), do: List.first(nums), else: 0
result = CaptchaSolver.get_value(nums, startValue)

IO.puts result