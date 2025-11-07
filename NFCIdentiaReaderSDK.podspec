Pod::Spec.new do |s|
  s.name             = 'NFCIdentiaReaderSDK'
  s.version          = '1.0.6'
  s.summary          = 'Un SDK para leer documentos de identidad con NFC.'
  s.homepage         = 'https://github.com/digiyoid/NFCIdentiaReader-iOS'
  s.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  s.author           = { 'Aurelio Figueredo' => 'afigueredo@roshka.com' }
  
  s.source		 = { 
    :http => 'https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.6/NFCIdentiaReader.xcframework.zip',
    :sha256 => '99000f37e6de47e14675fbfb97621311bcb8ff04467aa7ed6d68f85da38300e2' 
  }

  s.ios.deployment_target = '15.0'
  s.platform         = :ios, '15.0'
  
  s.vendored_frameworks = 'NFCIdentiaReader.xcframework' 
  
  s.dependency 'OpenSSL-Universal', '~> 1.1.2300'

end
