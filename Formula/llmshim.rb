class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.24/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "eb1a9f4411f8586446be300e0b85a57451e7a2836257145d7ce470126749562d"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.24/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "c8a5a92497882bfbfe6e0b8be3290397d101798c2bc69c1cc9231c67e1c4ccc0"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
