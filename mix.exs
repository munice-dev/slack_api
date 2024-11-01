defmodule SlackAPI.MixProject do
  use Mix.Project

  @source_url "https://github.com/kminwoog/slack_api"
  @version "1.2.0"
  @name :slack_api

  def project() do
    [
      app: @name,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps() do
    [
      {:slack_api_docs, "~> 0.1.2", only: [:dev], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:tesla, "~> 1.13"}
    ]
  end

  defp description() do
    "Slack API module. Simplify the use of the Slack API"
  end

  defp package() do
    [
      description: "slack_api",
      maintainers: ["taiyo"],
      licenses: ["MIT"],
      links: %{GitHub: @source_url}
    ]
  end
end
