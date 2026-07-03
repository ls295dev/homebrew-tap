class InksgameHelper < Formula
    desc "dependency for inksgame"
    homepage "https://codeberg.org/Luca295/inksgame-helper"
    head "https://codeberg.org/Luca295/inksgame-helper/archive/main.zip"
  
    depends_on "node" => [:build, :test]

    def install
      
        if build.head?
          inreplace "package.json", /"version":\s*".*"/, '"version": "HEAD"'
        end
      
        system "npm", "install", *std_npm_args
        bin.install_symlink libexec/"bin/inksgame-helper"
    end
end
