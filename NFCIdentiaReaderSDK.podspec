Pod::Spec.new do |s|
  s.name             = 'NFCIdentiaReaderSDK'
  s.version          = '1.0.0'
  s.summary          = 'Un SDK para leer documentos de identidad con NFC.'
  s.homepage         = 'https://github.com/digiyoid/NFCIdentiaReader-iOS'
  spec.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  s.author           = { 'Aurelio Figueredo' => 'afigueredo@roshka.com' }
  
  s.source		 = { 
    :http => 'https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.0/NFCIdentiaReader.xcframework.zip',
    :sha256 => '48b92e044953cbc763deb15955ec16486ae56bd2dc94494256f3833b98122f18' 
  }

  s.ios.deployment_target = '15.0'
  s.platform         = :ios, '15.0'
  
  s.vendored_frameworks = 'NFCIdentiaReader.xcframework' 
  
  s.dependency 'OpenSSL-Universal', '~> 1.1.2300'

end