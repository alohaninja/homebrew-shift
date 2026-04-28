class ShiftAi < Formula
  desc "Multimodal preflight layer that transforms images before they reach AI model APIs"
  homepage "https://github.com/alohaninja/shift"
  license "Apache-2.0"
  head "https://github.com/alohaninja/shift.git", branch: "main"

  url "https://github.com/alohaninja/shift/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "dccbdac1940e2416fe533969d63705f9febd1b13baef35ecbd1fcac796dab916"
  version "0.9.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "shift-cli")
  end

  test do
    assert_match "shift-ai", shell_output("#{bin}/shift-ai --version")
  end
end
