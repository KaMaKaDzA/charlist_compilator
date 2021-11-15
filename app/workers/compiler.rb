require 'sneakers'

class Compiler
  include Sneakers::Worker
  from_queue 'pdf_compilation.send'

  def work(params)
    res = PdfCompiler.call(params)
    payload = res[:error].present? ? { success: false, data: res[:error] } :  { success: true, data: res[:data] }
    publish(payload.to_json, to_queue: 'pdf_compilation.responce', durable: true)

    ack!
  end
end
