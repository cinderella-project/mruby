MRuby::Build.new("host") do |conf|
  toolchain :clang
  conf.cc do |cc|
    cc.command = "xcrun"
    cc.flags = %W(-sdk macosx clang -fembed-bitcode-marker)
  end

  conf.linker do |linker|
    linker.command = "xcrun"
    linker.flags = %W(-sdk macosx clang -fembed-bitcode-marker)
  end

  conf.gembox 'cinderella'
end

MRuby::CrossBuild.new('iphonesimulator') do |conf|
  toolchain :clang
  conf.cc do |cc|
    cc.command = "xcrun"
    cc.flags = %W(-sdk iphonesimulator clang -fembed-bitcode-marker)
  end

  conf.linker do |linker|
    linker.command = "xcrun"
    linker.flags = %W(-sdk iphonesimulator clang -fembed-bitcode-marker)
  end

  conf.bins = []
  conf.gembox 'cinderella'
end

MRuby::CrossBuild.new('iphoneos') do |conf|
  toolchain :clang
  conf.cc do |cc|
    cc.command = "xcrun"
    cc.flags = %W(-sdk iphoneos clang -arch arm64 -fembed-bitcode-marker)
  end

  conf.linker do |linker|
    linker.command = "xcrun"
    linker.flags = %W(-sdk iphoneos clang -arch arm64 -fembed-bitcode-marker)
  end

  conf.bins = []
  conf.gembox 'cinderella'
end
