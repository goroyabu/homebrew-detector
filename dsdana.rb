DSDANA_VERSION="1.0.9"
ANLCROSS_VERSION="1.1.0"
COMCLI_VERSION="1.1.4"

class Dsdana < Formula
  desc "Basic Analysis of Double-sided detectors"
  homepage "https://github.com/goroyabu/dsdana"
  url "https://github.com/goroyabu/dsdana/archive/#{DSDANA_VERSION}.tar.gz"
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
  end

  test do
    system "false"
  end
end
