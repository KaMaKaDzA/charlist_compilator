class PdfCompiler < ApplicationService
  def initialize(data)
    @data = data
  end

  def call
    # TODO generation of pdf file
    result = {}
    result[:error] = "Initial msg - #{@data}. Compiler not implemented yet."
    result
  end
end