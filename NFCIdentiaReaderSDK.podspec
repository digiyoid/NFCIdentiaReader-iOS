Pod::Spec.new do |s|
  s.name             = 'NFCIdentiaReaderSDK'
  s.version          = '1.0.1'
  s.summary          = 'Un SDK para leer documentos de identidad con NFC.'
  s.homepage         = 'https://github.com/digiyoid/NFCIdentiaReader-iOS'
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  s.author           = { 'Aurelio Figueredo' => 'afigueredo@roshka.com' }
  
  s.source		 = { 
    :http => 'https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.1/NFCIdentiaReader.xcframework.zip',
    :sha256 => '7735812407f163ca2fb02600f785ec744cdb005c9ac5fb2496fec554a4821693' 
  }

  s.ios.deployment_target = '15.0'
  s.platform         = :ios, '15.0'
  
  s.vendored_frameworks = 'NFCIdentiaReader.xcframework' 
  
  s.dependency 'OpenSSL-Universal', '~> 1.1.2300'

end
