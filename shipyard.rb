# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.0.36"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.36/shipyard_0.0.36_Darwin_x86_64.tar.gz"
    sha256 "a4d701ee88f9440f464df2939bc3e5b20aa51e776e5ee9b2056f4cdc969cf120"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.36/shipyard_0.0.36_Linux_x86_64.tar.gz"
      sha256 "af33304c9aead9587e6c59fe75075240591156ab6ab6a17ffd589da0df11f8e8"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.36/shipyard_0.0.36_Linux_arm64.tar.gz"
        sha256 "1eb0da4a3f686bca459389b290ac375c49cc246c572680762d2d30b5076119d9"
      else
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.36/shipyard_0.0.36_Linux_armv6.tar.gz"
        sha256 "95eecd1a50b5a6fffe2fbdae83f1f3ed3c48e180fad1c11bd11725daa975e15e"
      end
    end
  end

  def install
    bin.install "shipyard"
  end
end
