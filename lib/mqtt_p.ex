defmodule MqttP do
  use Hulaaki.Client
def worker do
  {:ok,pid}=Hulaaki.Client.start_link(%{}) #???
  options=[client_id: "eepc",host: "192.168.0.105",port: "1883",ssl: true]
  conn=Hulaaki.Client.connect(pid,options)
  p=Hulaaki.Client.ping(pid)
  end
end
