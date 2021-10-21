defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minute) do
    expected_minutes_in_oven() - minute
  end

  def preparation_time_in_minutes(num_layer) do
    2 * num_layer
  end

  def total_time_in_minutes(num_layer, minute) do
    preparation_time_in_minutes(num_layer) + minute
  end

  def alarm() do
    "Ding!"
  end
end
