class Tally < Formula
  desc "Git-backed findings tracker for AI coding agents"
  homepage "https://github.com/1898andCo/tally"
  url "https://github.com/1898andCo/tally/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "6726908ddedcaaf189e2ca8357fecab2b4428367b83052d11fe3d152db3cc639"
  license "Apache-2.0"
  head "https://github.com/1898andCo/tally.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tally", "--version"
  end
end
