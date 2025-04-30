class Iproute2macColor < Formula
  include Language::Python::Virtualenv

  desc "CLI wrapper for macOS network utilities with color support"
  homepage "https://github.com/luoling8192/iproute2mac-color"
  url "https://github.com/luoling8192/iproute2mac-color/archive/refs/tags/v1.5.5.tar.gz"
  sha256 "054d356b9579f91134936e7f9cd387d5164653ce16d1034c4be0409cd72eebad"
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
