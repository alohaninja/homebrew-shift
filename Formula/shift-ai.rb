class ShiftAi < Formula
  desc "Multimodal preflight layer that transforms images before they reach AI model APIs"
  homepage "https://github.com/alohaninja/shift"
  license "Apache-2.0"
  head "https://github.com/alohaninja/shift.git", branch: "main"

  url "https://github.com/alohaninja/shift/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "c02802ae282c6398f41ff794377e30c6ca0442514448e36683219286eb318c67"
  version "0.6.2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "shift-cli")
  end

  test do
    assert_match "shift-ai", shell_output("#{bin}/shift-ai --version")
  end
end
