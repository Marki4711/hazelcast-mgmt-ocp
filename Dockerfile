FROM hazelcast/management-center 
  
USER root 
    
RUN mkdir ${HZ_HOME}config 
RUN chmod -R a+rw ${HZ_HOME}* 
        
# User default when running 
USER default 
	  
# Start hazelcast standalone server. 
CMD java -Dhazelcast.mancenter.home=${HZ_HOME}config -jar mancenter-${HZ_VERSION}.war 
