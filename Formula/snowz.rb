class Snowz < Formula
  desc "Snow animation + anti-sleep command for macOS terminal"
  homepage "https://github.com/trentkm/snowz"
  url "https://github.com/trentkm/snowz/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "33d6e781b1ac44b00e13835ba8792d40bea8f4ef4cf45932be0fb10f17cb71e2"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/snowz", "--version"
  end
end
