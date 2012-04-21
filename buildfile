repositories.remote << "http://mirrors.ibiblio.org/pub/mirrors/maven2/"
define 'EchoServer' do
	project.version = '0.1.0'
	package(:jar).with :manifest => { "Main-Class" => "org.cloudfoundry.services.EchoService"}

	task :run => :compile do
		system 'java -jar target/EchoServer-0.1.0.jar -port 5002'
	end
end
