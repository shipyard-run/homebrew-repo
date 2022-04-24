# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.52"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.52/shipyard_0.3.52_darwin_x86_64.zip"
    sha256 "e5230b08cb3b3a631411c6725af98f9013310b62f36847e88d5bcee268125898"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.52/shipyard_0.3.52_darwin_arm64.zip"
    sha256 "0727c533563327083d302d8b519b015049598c345f97ece675a4b4f3453f1adf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.52/shipyard_0.3.52_linux_x86_64.tar.gz"
    sha256 "b7ff53bf5673a0413d8d801f10a32b818445306fd911ad7ba1c67324f811ba8d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.52/shipyard_0.3.52_linux_armv7.tar.gz"
    sha256 "ba495a1f215f0d4336ffc6dbb47f15f8b0e66bf3c7fdc88a83c1923589f258af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.52/shipyard_0.3.52_linux_arm64.tar.gz"
    sha256 "3783522e8ad6d902d9a57adcd043d2e98ccd0c878902c27e66906e2a10b4732c"
  end

  def install
    bin.install "shipyard"
  end
end
