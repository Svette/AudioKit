Pod::Spec.new do |s|
	s.name              = 'AudioKit'
	s.version           = '3.7.1'
	s.license           = { :type => 'MIT' }
	s.summary           = 'Open-source audio synthesis, processing, & analysis platform.'
	s.authors           = { 'Aurelius Prochazka' => 'audiokit@audiokit.io' }
	s.homepage          = 'http://audiokit.io/'
	s.social_media_url  = 'http://twitter.com/AudioKitMan'
	s.documentation_url = 'http://audiokit.io/docs/'
	s.source            = { :git => 'https://github.com/Svette/AudioKit/', :commit => '53694ae90b17c6a5d00f74611d293fac592b8312' }

	s.ios.deployment_target  = '9.0'
	s.osx.deployment_target  = '10.11'
	s.tvos.deployment_target = '9.0'

	s.source_files      = 'AudioKit/Common/*.{swift, h, m, c}',
	s.ios.source_files  = 'AudioKit/iOS/AudioKit/*.swift'
	s.osx.source_files  = 'AudioKit/macOS/AudioKit/*.swift'
	s.tvos.source_files = 'Frameworks/AudioKit-tvOS/AudioKit.framework/Headers/*.h'

	s.ios.public_header_files  = 'Frameworks/AudioKit-iOS/AudioKit.framework/Headers/*.h'
	s.osx.public_header_files  = 'Frameworks/AudioKit-macOS/AudioKit.framework/Versions/A/Headers/*.h'
	s.tvos.public_header_files = 'Frameworks/AudioKit-tvOS/AudioKit.framework/Headers/*.h'

	s.ios.vendored_frameworks  = 'Frameworks/AudioKit-iOS/AudioKit.framework'
	s.osx.vendored_frameworks  = 'Frameworks/AudioKit-macOS/AudioKit.framework'
	s.tvos.vendored_frameworks = 'Frameworks/AudioKit-tvOS/AudioKit.framework'

	s.framework = 'AVFoundation'
end