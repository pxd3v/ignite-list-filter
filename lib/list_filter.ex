defmodule ListFilter do
  def call(list), do: filter(list)

  require Integer

  def filter(list) do
    list
    |> Enum.filter(fn listItem -> string_is_number(listItem) end)
    |> Enum.count()
  end

  defp string_is_number(value) do
    case Integer.parse(value) do
      :error -> false
      {number, _} -> Integer.is_odd(number)
    end
  end
end
