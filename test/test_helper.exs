ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Reactpx.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Reactpx.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Reactpx.Repo)

