defmodule BirdCount do
  def today(list) do
    cond do
      list == [] -> nil
      true -> hd(list)
    end
  end

  def increment_day_count(list) do
    cond do
      list == [] -> [1]
      # true -> [hd(list) + 1] ++ tl(list)
      true -> [hd(list) + 1 | tl(list)]
    end
  end

  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?(list) do
    hd(list) == 0 || has_day_without_birds?(tl(list))
  end

  def total([]) do
    0
  end

  def total(list) do
    hd(list) + total(tl(list))
  end

  def busy_days([]) do
    0
  end

  def busy_days(list) do
    cond do
      hd(list) >= 5 -> 1 + busy_days(tl(list))
      true -> busy_days(tl(list))
    end
  end
end
