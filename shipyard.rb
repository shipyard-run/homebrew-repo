# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.48"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.48/shipyard_0.3.48_darwin_x86_64.zip"
    sha256 "0750ca729c005f6b276e85bc53a05d2ce0728a170c0cb808d5638ddc668e8e2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.48/shipyard_0.3.48_darwin_arm64.zip"
    sha256 "d4bf1d13484c0c86d3711779c525e27981dd6123005d4ef81e4699c9d54749a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.48/shipyard_0.3.48_linux_x86_64.tar.gz"
    sha256 "dfaca50e507aedf0b242e205f8b75b188accd0d1240e12d71afb401facfaf6a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.48/shipyard_0.3.48_linux_armv7.tar.gz"
    sha256 "8c0009902420ed5c11726212473b049df43f2afff9cc4e745a75e9f32ab79a82"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.48/shipyard_0.3.48_linux_arm64.tar.gz"
    sha256 "bb226964ab0499f217d10dd12ea985ad74763fc6a20cdb7205b4761cc860c11a"
  end

  def install
    bin.install "shipyard"
  end
end
