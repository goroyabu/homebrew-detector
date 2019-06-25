class ComCli < Formula
  desc "C++Library of CLI"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli/archive/1.1.2.zip"
  version "1.1.2"
  sha256 "c03b008a4a993798056ca1e92d4108af3645d6eb0b6641ccc7fc7c84bf886d9e"
  depends_on "make" => :build

  def install
    system "echo", "install..."
    system "make", "install"
  end

  test do
    system "false"
  end
end
