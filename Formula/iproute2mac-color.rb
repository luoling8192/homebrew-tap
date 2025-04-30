class Iproute2macColor < Formula
  desc "CLI wrapper for network utilities on macOS with color support"
  homepage "https://github.com/luoling8192/iproute2mac-color"
  url "https://github.com/luoling8192/iproute2mac-color/archive/refs/tags/v1.5.5.tar.gz"
  sha256 "c97318ba31b29bad4b5317eb814017440c2cb158fe36db5b514ef0e5e16444ea"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install Dir["src/*"]
    bin.install_symlink libexec/"ip.py" => "ip"
    bin.install_symlink libexec/"bridge.py" => "bridge"
    bin.install_symlink libexec/"ss.py" => "ss"
  end

  test do
    system "#{bin}/ip", "--help"
    system "#{bin}/bridge", "--help"
    system "#{bin}/ss", "--help"
  end
end 

