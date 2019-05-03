# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class CryptoEnigma < Formula
  desc "Enigma machine executable for macOS"
  homepage ""
  url "https://github.com/orome/crypto-enigma-macos/archive/0.1.1.5.tar.gz", :using => :curl
  sha256 "5327bdcf1bec73339339bf9c0f03b540cbea2149e50066c953b224d7f1cfae53"

  #version "0.1.1.5"
  #url "git@github.com:orome/crypto-enigma-macos.git", :using => :git
  #url "https://github.com/orome/crypto-enigma-macos.git"#, :using => :git  

  #depends_on "curl"

  def install
    bin.install "enigma"
  end

  test do
    assert_match "0.1.1.5", shell_output("#{bin}/enigma --version") 
    assert_match "OZQK PFLP YZRP YTFV U", shell_output("#{bin}/enigma encode 'B-I-III-I EMO UX.MO.AY 13.04.11' 'TESTINGXTESTINGUD'") 
    assert_match "OZQK PFLP YZRP YTFV U", shell_output("#{bin}/enigma encode 'B-I-III-I EMO UX.MO.AY 13.04.11' 'TESTING! testing?'") 
  end
end

