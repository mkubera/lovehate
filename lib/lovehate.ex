defmodule Lovehate do
  @moduledoc """
  Documentation for Lovehate.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Lovehate.hello()
      :world

  """
  def hello do
    :world
  end

  def pick_love(list \\ [:hate,:love,:hate,:love,:hate], acc \\ []) do
    case list do
      [] -> acc
      [head | tail] ->
      case head do
        :love -> pick_love(tail, [head | acc])
        _ -> pick_love(tail, acc)
      end
    end
  end

  def sort_love_and_hate(list \\ [:hate,:love,:hate,:love,:hate], acc_love \\ [], acc_hate \\ []) do
    case list do
      [] -> [acc_love, acc_hate] #TODO: is list the most efficient way for two lists? Check!
      [head | tail] ->
      case head do
        :love -> sort_love_and_hate(tail, [head | acc_love], acc_hate)
        :hate -> sort_love_and_hate(tail, acc_love, [head | acc_hate])
        _ -> sort_love_and_hate(tail, acc_love, acc_hate)
      end
    end
  end
end
