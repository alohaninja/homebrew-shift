class ShiftAi < Formula
  desc "Multimodal preflight layer that transforms images before they reach AI model APIs"
  homepage "https://github.com/alohaninja/shift"
  license "Apache-2.0"
  head "https://github.com/alohaninja/shift.git", branch: "main"

  url "https://github.com/alohaninja/shift/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "e4bed33aa5c42035baa0b72eaad80fbb6ebfb98d6b8a55555e7dd983ef365b60"
  version "0.6.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "shift-cli")
  end

  test do
    assert_match "shift-ai", shell_output("#{bin}/shift-ai --version")
  end
end
