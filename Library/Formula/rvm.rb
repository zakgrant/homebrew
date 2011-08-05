require 'formula'

class Rvm < Formula
	url 'https://rvm.beginrescueend.com/install/rvm'
	homepage 'https://rvm.beginrescueend.com/'
	md5 'dd8cae612a595df602161271fcd1f0e5'
	version '1.6.32'
	
	depends_on 'git'
	
	def install
		system "curl -s #{url} -o rvm-installer ; chmod +x rvm-installer ; rvm_bin_path=#{prefix}/bin rvm_man_path=#{prefix}/share/man ./rvm-installer --version #{version}"
  end
end
