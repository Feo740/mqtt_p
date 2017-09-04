defmodule MqttP do
  def funk() do
    MMQL.connect("V")
    MMQL.sub("V","ESP/flap1")
      receive do
        {:subscribed_publish,conn_name,topic,msg}->
          IO.puts("message is:#{msg}")
        after
          2_0000 ->
            throw("msg not received")
            funk()
      end
  end
end
