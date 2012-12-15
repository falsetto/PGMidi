#
# Be sure to run `pod spec lint PGMidi.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'PGMidi'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.summary  = 'CoreMidi made simple on iOS.'
  s.homepage = 'https://github.com/petegoodliffe/PGMidi'
  s.author   = { 'Pete Goodliffe' => 'pete%20monkey%20goodliffe.net' }

  # Specify the location from where the source should be retreived.
  #
  s.source   = { :git => 'https://github.com/falsetto/PGMidi.git' }
  # s.source   = { :svn => 'http://EXAMPLE/PGMidi/tags/1.0.0' }
  # s.source   = { :hg  => 'http://EXAMPLE/PGMidi', :revision => '1.0.0' }

  s.description = <<-DESCRIPTION
    PGMidi is a simple library for access to MIDI devices presented via the CoreMidi framework on iOS. It comes with an example project to illustrate how to use the library in your own iOS application.

    It has become the de-facto iOS API for simple MIDI access, incorporated into many of the popular MIDI applications for iOS. Thanks to everyone who has used it and provided feedback.

    It doesn't illustrate the entire CoreMidi API, but will give you a suitable head start into it. (I couldn't find any good examples myself when I needed some.)

    The PGMidi classes are pretty full featured and easy to incorporate into your own project. Many MIDI apps have just pulled in these classes verbatim.

    If you find this useful, please do let me know!

    The demo application presents a message when MIDI devices are attached and detached, and prints the first three bytes of any blocks of MIDI input received.

    It works on iPhones or iPads, but will only do something useful if the device is running iOS 4.2 or higher (CoreMidi is not available in earlier iOS versions).

    The latest version of the project supports ARC and non-ARC projects from the same source.
  DESCRIPTION

  # If this Pod runs only on iOS or OS X, then specify that with one of
  # these, or none if it runs on both platforms.
  #
  s.platform = :ios
  # s.platform = :osx

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  # Alternatively, you can use the FileList class for even more control
  # over the selected files.
  # (See http://rake.rubyforge.org/classes/Rake/FileList.html.)
  #
  s.source_files = 'Sources/PGMidi'

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  #
  # Also allows the use of the FileList class like `source_files does.
  #
  # s.resource = "icon.png"
  # s.resources = "Resources/*.png"

  # A list of paths to remove after installing the Pod without the
  # `--no-clean' option. These can be examples, docs, and any other type
  # of files that are not needed to build the Pod.
  #
  # *NOTE*: Never remove license and README files.
  #
  # Also allows the use of the FileList class like `source_files does.
  #
  # s.clean_path = "examples"
  # s.clean_paths = "examples", "doc"

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  #
  # s.framework = 'SomeFramework'
  s.frameworks = 'CoreMidi'

  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # s.library = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  # If this Pod uses ARC, specify it like so.
  #
  # s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'
end
