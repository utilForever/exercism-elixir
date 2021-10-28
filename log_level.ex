defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 5 && !legacy? -> :fatal
      level == 4 -> :error
      level == 3 -> :warning
      level == 2 -> :info
      level == 1 -> :debug
      level == 0 && !legacy? -> :trace
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    cond do
      label == :fatal || label == :error -> :ops
      label == :unknown && legacy? -> :dev1
      label == :unknown && !legacy? -> :dev2
      true -> false
    end
  end
end
