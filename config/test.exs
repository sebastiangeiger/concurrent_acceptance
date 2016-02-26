use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :concurrent_acceptance, ConcurrentAcceptance.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :concurrent_acceptance, ConcurrentAcceptance.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "concurrent_acceptance_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox


config :hound, driver: "selenium"

config :concurrent_acceptance, sql_sandbox: true
