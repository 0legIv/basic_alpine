use Mix.Config

config :basic_app,
  mongo_savvy: [
    name: :mongo_savvy,
    pool: DBConnection.Poolboy,
    url: "mongodb://paybear.local:27017/paybear_staging",
    pool_size: 10,
    pool_overflow: 20,
    timeout: 20_000,
    pool_timeout: 15_000
  ]
