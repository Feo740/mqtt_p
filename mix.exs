defmodule MqttP.Mixfile do
  use Mix.Project

  def project do
    [app: :mqtt_p,
     version: "0.0.1",
     elixir: "~> 1.1-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #n   mn
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :mmql]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  def deps do
    [{:mmql, git: "https://github.com/UA3MQJ/elx_mmql.git"}]
  end
end
