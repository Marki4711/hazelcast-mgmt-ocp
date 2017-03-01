FROM hazelcast/management-center:latest 
  
USER root 
    
RUN mkdir ${HZ_HOME}config \
 && RUN chmod -R a+rw ${HZ_HOME}* 
 
RUN useradd -r hazelcast 
        
# User default when running 
USER hazelcast 
	  
# Start hazelcast standalone server. 
CMD java -Dhazelcast.mancenter.home=${HZ_HOME}config -jar mancenter-${HZ_VERSION}.war 
