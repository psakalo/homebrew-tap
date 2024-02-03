class SmartCommit < Formula
  desc "smart-commit is a tool to help you write commit messages using OpenAI API"
  homepage "https://github.com/psakalo/smart-commit"
  url "https://github.com/psakalo/smart-commit/archive/refs/heads/master.tar.gz"
  version "0.1.0"
  sha256 "" 

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/smart-commit"

    # Install git-smart-commit helper script
    bin.install "scripts/git-smart-commit"
  end

  test do
    system "#{bin}/smart-commit", "--version"
    system "#{bin}/git-smart-commit", "--version"
  end
end
