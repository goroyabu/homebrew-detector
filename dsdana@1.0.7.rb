DSDANA_VERSION="1.0.7"
ANLCROSS_VERSION="1.1.0"
COMCLI_VERSION="1.1.4"

class DsdanaAT107 < Formula
  desc "Basic Analysis of Double-sided detectors"
  homepage "https://github.com/goroyabu/dsdana"
  url "https://github.com/goroyabu/dsdana/archive/#{DSDANA_VERSION}.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build
  depends_on "com_cli@#{COMCLI_VERSION}" => :build
  depends_on "anlcross@#{ANLCROSS_VERSION}" => :build
  depends_on "root" => :build

  def install
    system "make", "install", "CXX=g++-9"
    system "make", "install_tools"
    
    bin.install "bin/dsdana"
    bin.install Dir["tools/bin/*"]
    share.install "example/"
    share.install "source/"
    share.install "Makefile"
    
  end

  test do
    system "false"
  end
end
