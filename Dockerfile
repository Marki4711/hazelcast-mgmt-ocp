FROM hazelcast/management-center:3.7.5 
 
RUN mkdir ${HZ_HOME}config \
 && chmod -R a+rw ${HZ_HOME}* 
 
# Start hazelcast standalone server. 
CMD java -Dhazelcast.mancenter.home=${HZ_HOME}config -jar mancenter-${HZ_VERSION}.war 
