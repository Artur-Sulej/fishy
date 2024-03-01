defmodule Fishy.MixProject do
  use Mix.Project

  def project do
    [
      app: :fishy,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bumblebee, "~> 0.5.3"},
      {:exla, ">= 0.0.0"}
    ]
  end
end
