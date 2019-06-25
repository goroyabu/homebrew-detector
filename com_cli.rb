class ComCli < Formula
  desc "C++Library of CLI"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli/archive/1.1.2.zip"
  version "1.1.2"
  depends_on "make" => :build
  depends_on "gcc" => :build

  def install
    system "echo", "install..."
    system "make", "install", "CXX=g++-9"
  end

  test do
    system "false"
  end
end
