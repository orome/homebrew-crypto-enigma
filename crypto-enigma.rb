# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class CryptoEnigma < Formula
  desc "Enigma machine executable for macOS"
  homepage ""
  url "https://github.com/orome/crypto-enigma-macos/archive/0.1.1.6.tar.gz", :using => :curl
  sha256 "9270960f03950141373c1987b997e6119351426bee610612c9cbd9a16db9dd09"

  #version "0.1.1.6"
  #url "git@github.com:orome/crypto-enigma-macos.git", :using => :git
  #url "https://github.com/orome/crypto-enigma-macos.git"#, :using => :git  

  #depends_on "curl"

  def install
    bin.install "enigma"
  end

  test do
    assert_match "0.1.1.6", shell_output("#{bin}/enigma --version") 
    # Update these tests when bug is fixed: https://github.com/orome/crypto-enigma-hs/issues/33
    assert_match "OZQK PFLP YZRP YTFV U", shell_output("#{bin}/enigma encode 'B-I-III-I EMO UX.MO.AY 13.04.11' 'TESTINGXTESTINGUD'") 
    assert_match "OZQK PFLP YZRP YTFV U", shell_output("#{bin}/enigma encode 'B-I-III-I EMO UX.MO.AY 13.04.11' 'TESTING! testing?'") 
  end
end

