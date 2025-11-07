Pod::Spec.new do |s|
  s.name             = 'NFCIdentiaReaderSDK'
  s.version          = '1.0.4'
  s.summary          = 'Un SDK para leer documentos de identidad con NFC.'
  s.homepage         = 'https://github.com/digiyoid/NFCIdentiaReader-iOS'
  s.license      = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Roshka. All rights reserved.' }
  s.author           = { 'Aurelio Figueredo' => 'afigueredo@roshka.com' }
  
  s.source		 = { 
    :http => 'https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.4/NFCIdentiaReader.xcframework.zip',
    :sha256 => '62de6e323ba9c4ba216b3e29b4aaf2c8b06bf6d8ef00b1ce5ec8795b735d1f83' 
  }

  s.ios.deployment_target = '15.0'
  s.platform         = :ios, '15.0'
  
  s.vendored_frameworks = 'NFCIdentiaReader.xcframework' 
  
  s.dependency 'OpenSSL-Universal', '~> 1.1.2300'

end
