use Mix.Config

config :mmql,
  options: %{
    connections: %{

      "V" => %{
        mq_type: :mqmqtt,
        autoconnect: false,
        # host: "test.mosquitto.org",
        # port: 1883
        host: "192.168.0.105",
        port: 1883,
        timeout: 20000
      }
    }
  }
