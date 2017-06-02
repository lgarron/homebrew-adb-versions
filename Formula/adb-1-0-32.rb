# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Adb1032 < Formula
  desc ""
  homepage ""
  url "https://dl-ssl.google.com/android/repository/platform-tools_r22-macosx.zip"
  sha256 "c06721ff66a1a3f70e489325f06474e28cd0efd5352f097ee2ff58167b4f6564"

  def install
    bin.install "adb" => "adb-1-0-32"
  end

  test do
    system "false"
  end
end
