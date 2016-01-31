FROM 1science/sbt

ENV PROTOC_PATH /opt/protoc3.exe

RUN mkdir /opt

RUN wget -O $PROTOC_PATH http://search.maven.org/remotecontent?filepath=com/google/protobuf/protoc/3.0.0-beta-2/protoc-3.0.0-beta-2-linux-x86_64.exe

RUN chmod +x $PROTOC_PATH

RUN ln -s /opt/protoc3.exe /usr/bin/protoc
