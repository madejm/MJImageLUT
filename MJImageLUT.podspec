Pod::Spec.new do |s|
	s.name			= 'MJImageLUT'
	s.version		= "1.0"
	s.summary		= "CocoaLUT extension"
	s.authors		= "Mateusz Madej"
	s.license		= ""
	s.homepage		= "https://github.com/madejm"
	s.source		= { :git => '' }

	s.platform		= :ios, '10.3'
	s.requires_arc	= true

	s.source_files = 'MJImageLUT/*.{swift}'

	s.dependency 'CocoaLUT'
end