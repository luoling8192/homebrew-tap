class Iproute2macColor < Formula
  include Language::Python::Virtualenv

  desc "CLI wrapper for macOS network utilities with color support"
  homepage "https://github.com/luoling8192/iproute2mac-color"
  url "https://github.com/luoling8192/iproute2mac-color/archive/refs/tags/v1.5.5.tar.gz"
  sha256 "c97318ba31b29bad4b5317eb814017440c2cb158fe36db5b514ef0e5e16444ea"
  license "MIT"
  head "https://github.com/luoling8192/iproute2mac-color.git", branch: "master"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "iproute2mac", shell_output("#{bin}/ip -V 2>&1")
    assert_match "iproute2mac", shell_output("#{bin}/bridge -V 2>&1")
    assert_match "iproute2mac", shell_output("#{bin}/ss -V 2>&1")
  end
end 
