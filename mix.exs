defmodule ElixirV8.Mixfile do
  use Mix.Project

  def project do
    [app: :elixirV8,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: "Embed the V8 Javascript Interpreter into Elixir",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger],
     mod: {ElixirV8, []}]
  end

  defp deps do
    []
  end
end
