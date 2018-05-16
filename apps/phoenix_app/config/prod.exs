use Mix.Config

config :phoenix_app, PhoenixAppWeb.Endpoint,
  load_from_system_env: true,
  http: [:inet6, port: {:system, "PORT"}],
  url: [host: "localhost", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true,
  root: ".",
  version: Application.spec(:phoenix_app, :vsn)

config :phoenix_app, authentication: [
  username: {:system, "BASIC_AUTH_USERNAME"},
  password: {:system, "BASIC_AUTH_PASSWORD"},
  realm:    {:system, "BASIC_AUTH_REALM"}
]

config :logger, level: :info

config :phoenix_app, sombrilla: "${SOMBRILLA}"