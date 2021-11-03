defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter do
    {:milliliter, elem(volume_pair, 1)}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    {:milliliter, elem(volume_pair, 1) * 240}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do
    {:milliliter, elem(volume_pair, 1) * 30}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do
    {:milliliter, elem(volume_pair, 1) * 5}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do
    {:milliliter, elem(volume_pair, 1) * 15}
  end

  def from_milliliter(volume_pair, unit) when unit == :milliliter do
    {unit, elem(volume_pair, 1)}
  end

  def from_milliliter(volume_pair, unit) when unit == :cup do
    {unit, elem(volume_pair, 1) / 240}
  end

  def from_milliliter(volume_pair, unit) when unit == :fluid_ounce do
    {unit, elem(volume_pair, 1) / 30}
  end

  def from_milliliter(volume_pair, unit) when unit == :teaspoon do
    {unit, elem(volume_pair, 1) / 5}
  end

  def from_milliliter(volume_pair, unit) when unit == :tablespoon do
    {unit, elem(volume_pair, 1) / 15}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
