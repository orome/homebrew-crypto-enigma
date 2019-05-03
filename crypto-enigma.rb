# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test crypto-enigma-macos`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

