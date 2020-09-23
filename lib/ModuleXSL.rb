# frozen_string_literal: true

require 'nokogiri'

module ModuleXSL
  # @return [String]
  def readFile(path)
    File.read(path)
  end

  # @return [String]
  def transform(xmlFile, xsltFile)
    xmlDocument = Nokogiri::XML(xmlFile)
    xsltDocument = Nokogiri::XSLT(xsltFile)
    xsltDocument.transform(xmlDocument).to_s
  end
end
