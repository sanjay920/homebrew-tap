class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.22/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "7fffcf1985d30b211dec82e879e1c99c8661ba04604a54adf4ef728d5192609f"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.22/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "46542de2067a72280ca48382f3975fb9f6facefbb8d9c751b0b19259618eb120"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
