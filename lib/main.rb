require_relative 'ModuleXSL'
include ModuleXSL

xmlFile = ModuleXSL::readFile('xmlDocument.xml')
xsltFile = ModuleXSL::readFile('xsltDocument.xslt')

puts ModuleXSL::transform(xmlFile, xsltFile)