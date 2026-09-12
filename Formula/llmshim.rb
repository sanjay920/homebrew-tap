class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.6/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "49d99ab1e630900df3cec621377dd9926f622883ed8416730175c434091d31f1"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.6/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "cf889ed76ad447b0b8442303718b294781d2f7e422a21d6a1d6eb8ffd6de307d"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
