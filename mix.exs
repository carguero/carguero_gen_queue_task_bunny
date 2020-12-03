defmodule CargueroGenQueueTaskBunny.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :carguero_gen_queue_task_bunny,
      version: @version,
      elixir: "~> 1.7.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Carguero GenQueue TaskBunny",
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    GenQueue adapter for TaskBunny
    """
  end

  defp package do
    [
      name: :carguero_gen_queue_task_bunny,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Nicholas Sweeting", "CARGUERO team"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/carguero/carguero_carguero_gen_queue_task_bunny",
        "GenQueue" => "https://github.com/nsweeting/gen_queue"
      }
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_url: "https://github.com/carguero/carguero_carguero_gen_queue_task_bunny"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gen_queue, "~> 0.1.8"},
      {:carguero_task_bunny, "~> 0.0.4", runtime: false},
      {:ex_doc, ">= 0.23.0", only: :dev}
    ]
  end
end
