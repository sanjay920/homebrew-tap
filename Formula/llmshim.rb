class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "3d10fa69f60ad2c928aeb9b6e587d7415115fd87db1c5f5c0717ddf614bd91fe"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "90a271452ff8604944c953b623703012ad183228200c4c5265e928ef83614031"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
