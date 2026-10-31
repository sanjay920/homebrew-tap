class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.30.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "bf8c5b2aaf85b455cfb20a9697e507308d3544829b64699436dfa5673b8190e4"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.30.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "0cd622c538693dc4bbaa4793be8836be07ef3e45cdb17d651d8bf976736ab391"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
