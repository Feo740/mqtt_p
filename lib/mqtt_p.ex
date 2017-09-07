defmodule MqttP do
  def funk() do
    MMQL.connect("V")
    MMQL.sub("V","/ESP/flap_1")
    start_rcv()
  end
  def start_rcv() do
      receive do
        {:subscribed_publish,conn_name,topic,msg}->
          IO.puts("message is:#{msg}")
          start_rcv()
      end
  end
end
