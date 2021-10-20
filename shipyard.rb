# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.36"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.36/shipyard_0.3.36_darwin_x86_64.zip"
    sha256 "8ae68ea446c9a04ab96d9a740935b811e2d0b693fa7b06e3ea543d4996b1e515"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.36/shipyard_0.3.36_darwin_arm64.zip"
    sha256 "061b3afa701736560829894c02e57b888621d3ce8ab162423e38108ee1d96874"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.36/shipyard_0.3.36_linux_x86_64.tar.gz"
    sha256 "e1e76c214421ae4cda90fbec1ed1ddfc5dbaefba64a812e090e7b79929d14a76"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.36/shipyard_0.3.36_linux_armv7.tar.gz"
    sha256 "6e9c84b6c7a63af8be58075682dc973862cffc21414705c3e666508455d89fea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.36/shipyard_0.3.36_linux_arm64.tar.gz"
    sha256 "25803afedb9497a2d720f7c24c15f637d4b43b0237a32c9fd24bbfa66d917e15"
  end

  def install
    bin.install "shipyard"
  end
end
