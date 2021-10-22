defmodule Secrets do
  def secret_add(secret) do
    fn param ->
      param + secret
    end
  end
  def secret_subtract(secret) do
    fn param ->
      param - secret
    end
  end
  def secret_multiply(secret) do
    fn param ->
      param * secret
    end
  end
  def secret_divide(secret) do
    fn param ->
      div(param, secret)
    end
  end
  def secret_and(secret) do
    fn param ->
      Bitwise.&&&(param, secret)
    end
  end
  def secret_xor(secret) do
    fn param ->
      Bitwise.^^^(param, secret)
    end
  end
  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      secret_function2.(secret_function1.(param))
    end
  end
end
