class ShiftAi < Formula
  desc "Multimodal preflight layer that transforms images before they reach AI model APIs"
  homepage "https://github.com/alohaninja/shift"
  license "Apache-2.0"
  head "https://github.com/alohaninja/shift.git", branch: "main"

  url "https://github.com/alohaninja/shift/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "5832363403593d0ebf53e5fbfcfe2b99d1dc3dfc6cf99c0741931ea0a77d63c5"
  version "0.10.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "shift-cli")
  end

  test do
    assert_match "shift-ai", shell_output("#{bin}/shift-ai --version")
  end
end
