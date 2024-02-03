class SmartCommit < Formula
  desc "smart-commit is a tool to help you write commit messages using OpenAI API"
  homepage "https://github.com/psakalo/smart-commit"
  url "https://github.com/psakalo/smart-commit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "" 

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/smart-commit"
  end

  test do
    system "#{bin}/smart-commit", "--version"
  end
end
