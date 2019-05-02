# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CryptoEnigma < Formula
  desc "Enigma machine executable for macOS"
  homepage ""
  url "https://github.com/orome/crypto-enigma-macos/archive/0.0.0.tar.gz", :using => :curl
  #sha256 "829daa6add325823038949af2c8112668896b9c17503025626244fef6c8bb5a8"

  #depends_on "curl"

  def install
    bin.install "test.txt"
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

