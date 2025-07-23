Pod::Spec.new do |s|
  s.name             = 'NFCIdentiaReaderSDK'
  s.version          = '1.0.3'
  s.summary          = 'Un SDK para leer documentos de identidad con NFC.'
  s.homepage         = 'https://github.com/digiyoid/NFCIdentiaReader-iOS'
  s.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  s.author           = { 'Aurelio Figueredo' => 'afigueredo@roshka.com' }
  
  s.source		 = { 
    :http => 'https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.3/NFCIdentiaReader.xcframework.zip',
    :sha256 => '46a5e5c17cb6419861bc931b46b7720e4e4fbb4f6ef626af852a2594d3a07319' 
  }

  s.ios.deployment_target = '15.0'
  s.platform         = :ios, '15.0'
  
  s.vendored_frameworks = 'NFCIdentiaReader.xcframework' 
  
  s.dependency 'OpenSSL-Universal', '~> 1.1.2300'

end
