class ComCli < Formula
  desc "C++ Functions for Command Line Interface"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli/archive/1.1.3.zip"
  version "1.1.3"
  depends_on "make" => :build
  depends_on "gcc" => :build

  def install
    system "echo", "install..."
    system "make", "install", "CXX=g++-9"
  end

  def info
    "sss"
  end

  test do
    system "false"
  end
end
