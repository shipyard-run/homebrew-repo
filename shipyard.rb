# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.1.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.1.12/shipyard_0.1.12_Darwin_x86_64.tar.gz"
    sha256 "008fd47168fbaf7887187e89c63d604e1f60ed266335f6819db886c0c04ac08a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.1.12/shipyard_0.1.12_Linux_x86_64.tar.gz"
      sha256 "ad53007403a1b199f4b7d42929bc70504493d64489a94420a0a3977ea028b65e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.1.12/shipyard_0.1.12_Linux_arm64.tar.gz"
        sha256 "f7dfe9d54f73a5a5504c40a9da14a6b5599686adcacf475bb9516911f973ae47"
      else
      end
    end
  end

  def install
    bin.install "shipyard"
  end
end
