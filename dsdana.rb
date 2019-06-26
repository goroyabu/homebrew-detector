class Dsdana < Formula
  desc "Basic Analysis of Double-sided detectors"
  homepage "https://github.com/goroyabu/dsdana"
  url "https://github.com/goroyabu/dsdana/archive/1.0.2.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build
  depends_on "com_cli" => :build
  depends_on "anlcross" => :build
  depends_on "root" => :build

  def install
    system "make", "install", "CXX=g++-9"
    bin.install "bin/dsdana"
    share.install "example/"
  end

  test do
    system "false"
  end
end
