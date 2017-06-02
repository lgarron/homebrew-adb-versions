# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Adb1031 < Formula
  desc ""
  homepage ""
  url "https://dl-ssl.google.com/android/repository/platform-tools_r20-macosx.zip"
  sha256 "e57fd892cb8cda86a7fc506e14b462d4c244da31b399c0e663e095e9fd433b80"

  def install
    bin.install "adb" => "adb-1-0-31"
  end

  test do
    system "false"
  end
end
