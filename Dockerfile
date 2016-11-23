FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV FOO aad
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN echo "on a encore modifie"
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
