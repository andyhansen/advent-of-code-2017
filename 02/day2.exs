# defmodule CaptchaSolver do
#     def get_value(file, accumulator) do
#     end

#     def get_value(file, accumulator) do
#         accumulator
#     end
# end

file = File.read! "02/input.txt"

file = String.split(file, "\n")
        |> Enum.map(&(String.split(&1, "\t")))
        |> Enum.map(fn line -> (Enum.map(line, &(String.to_integer(&1)))) end)

IO.puts file