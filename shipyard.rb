# This file was generated by GoReleaser. DO NOT EDIT.
class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_x86_64.tar.gz"
      sha256 "87921f6f3d73ba763f94d0fb95b19e5bc2355debed074bd2dc6a34dec3f806ab"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_arm64.tar.gz"
        sha256 "d760f7025903865f5371e804d022c5ec3ef2a2a00aa5f10ff5f35e016e10da32"
      else
        url "https://github.com/shipyard-run/shipyard/releases/download/v0.0.2/shipyard_0.0.2_Linux_armv6.tar.gz"
        sha256 "103fed05f5e2d5108a012a8c393a2220a7a7faabcff7fc2545600cd4b47aa1d7"
      end
    end
  end
  
  depends_on "git"
  depends_on "docker"

  def install
  end
end
