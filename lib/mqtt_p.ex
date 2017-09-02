defmodule MqttP do
  def funk() do
    MMQL.connect("C")
    MMQL.sub("C","/ESP/flap1")
    receive do
      {:subscribed_publish,conn_name,topic,msg}->
        IO.puts("msg received #{msg}.")
      after
        2_000->
          throw("msg not received")
    end
  end
end
