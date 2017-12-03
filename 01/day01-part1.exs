defmodule CaptchaSolver do
    def get_value([head | tail], accumulator) do
        if (head == List.first(tail)) do
            get_value(tail, String.to_integer(head) + accumulator)
        else
            get_value(tail, accumulator)
        end
    end

    def get_value([], accumulator) do
        accumulator
    end
end


nums = String.graphemes(File.read!("input.txt"))

startValue = if List.first(nums) == List.last(nums), do: String.to_integer(List.first(nums)), else: 0
result = CaptchaSolver.get_value(nums, startValue)

IO.puts result