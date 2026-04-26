class IflowCli < Formula
  desc "AI-powered CLI that embeds in your terminal for coding tasks and workflow automation"
  homepage "https://platform.iflow.cn"
  url "https://registry.npmjs.org/@iflow-ai/iflow-cli/-/iflow-cli-0.5.19.tgz"
  sha256 "4ac4ec1d6e52362c5794bb07213886bafb554d4036752b8af8c8ca08462ab365"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "iflow", shell_output("#{bin}/iflow --version 2>&1", 0)
  end
end
