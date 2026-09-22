class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.11.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "f844c84541af608880753b523bdb6dd17bff04af5c6b6fcb8cd8dac164da89ab"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.11.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "daf6615da79f3a6bef472ad2ce7ec1d93a5b23b5f70e80ef4af56b97485d223a"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
