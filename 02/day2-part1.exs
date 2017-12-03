# defmodule CaptchaSolver do
#     def get_value(file, accumulator) do
#     end

#     def get_value(file, accumulator) do
#         accumulator
#     end
# end

file = File.read! "02/input.txt"

def subtract_max_from_min(line)
  Enum.max(line) - Enum.min(line)
end

file = 
  String.split(file, "\n")
    |> Enum.map(&(String.split(&1, "\t")))
    |> Enum.map(fn line -> (Enum.map(line, &(String.to_integer(&1)))) end)
    |> Enum.map(fn line -> Enum.max(line) - Enum.min(line) end)
    |> Enum.sum

IO.puts file