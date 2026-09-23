class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.12.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "76cbb58808dcb4fad423f7e7201e8e75c4bc3331c802290328183845734e1595"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.12.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "2e100481e959d837a2788f9469d1ab4a9474fe76034fd63dd4c966ea40362368"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
