class Ratrace < Formula
  desc "Rat Race operator CLI — portfolio tooling and MCP server for AI agents"
  homepage "https://ratrace.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/ratrace/v0.1.0/ratrace_darwin_amd64"
      sha256 "cb0bece11f306abc5bb03fc9cd529100d3cf91bb0a4d0824ff30c887e7bfe7cb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/ratrace/v0.1.0/ratrace_darwin_arm64"
      sha256 "fae19ff4aa0ccf855008c58932dc3cd88389e6449950910e8dce0fefe279d032"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/ratrace/v0.1.0/ratrace_linux_amd64"
      sha256 "929aa8c5cf35c71322b05db8fcfc8757fc868e64fe431a58735ace4759ed5bd7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/ratrace/v0.1.0/ratrace_linux_arm64"
      sha256 "d336154873c66480c8a2685888b2625392bde777db3a8176f7f9d7edb7509cac"
    end
  end

  def install
    bin.install Dir["ratrace_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "ratrace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ratrace version")
  end
end
