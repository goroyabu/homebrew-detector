class Dsdana < Formula
  desc "Basic Analysis of Double-sided detectors"
  homepage "https://github.com/goroyabu/dsdana"
  url "https://github.com/goroyabu/dsdana/archive/1.0.7.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build
  depends_on "com_cli" => :build
  depends_on "anlcross" => :build
  depends_on "root" => :build

  def install
    system "make", "install", "CXX=g++-9"
    system "make", "install_tools"
    
    bin.install "bin/dsdana"
    bin.install Dir["tools/bin/*"]
    share.install "example/"
  end

  test do
    system "false"
  end
end
