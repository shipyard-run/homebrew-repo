# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.31"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.31/shipyard_0.3.31_darwin_x86_64.zip"
    sha256 "83ba2a0c063c377689354bea19a266488b546bacf1a756dc1de5497281530835"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.31/shipyard_0.3.31_darwin_arm64.zip"
    sha256 "17d61f3e51b43b3d480c96452681993ae90c985f223fdcc15226a9bae636d4cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.31/shipyard_0.3.31_linux_x86_64.tar.gz"
    sha256 "10b6327df49a5638b73b3b53f561d1a03ad42424c4db49a08f74c992a6b7ed0b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.31/shipyard_0.3.31_linux_armv7.tar.gz"
    sha256 "b9529bf877c6ee1458fb0613fff42d3148edff9169bb45871a93608140b81bfd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.31/shipyard_0.3.31_linux_arm64.tar.gz"
    sha256 "89abfe19b24b62f7076ce392a32d120b1bae743d6c3a62c17f7b0c0e7c270c79"
  end

  def install
    bin.install "shipyard"
  end
end
