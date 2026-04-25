class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.20/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "1e528d9b8058bd9a89c4347e7978799def51d38036a8e80e4e4c9b276298ce75"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.20/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "b1dc0f55138bdd26cd1b1a2c2fb1022d416ff14e108371155dfd3500cf86adb6"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
