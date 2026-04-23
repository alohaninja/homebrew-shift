class ShiftAi < Formula
  desc "Multimodal preflight layer that transforms images before they reach AI model APIs"
  homepage "https://github.com/alohaninja/shift"
  license "Apache-2.0"
  head "https://github.com/alohaninja/shift.git", branch: "main"

  url "https://github.com/alohaninja/shift/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "64e9a9a84c6f0899385f6b989d2b2b7b1abb2cecc5ad2feebe1d39807ae91e24"
  version "0.1.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "shift-cli")
  end

  test do
    assert_match "shift-ai", shell_output("#{bin}/shift-ai --version")
  end
end
