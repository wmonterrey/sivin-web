package ni.gob.minsa.sivin.web.listener;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationListener;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.session.SessionDestroyedEvent;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

import ni.gob.minsa.sivin.users.dao.UserDetailsDao;

public class SessionDestroyListener implements ApplicationListener<SessionDestroyedEvent> {
	private static final Logger logger = LoggerFactory.getLogger(SessionDestroyListener.class);
	UserDetailsDao userDetailsDao;
	@Override
	public void onApplicationEvent(SessionDestroyedEvent event) {
		List<SecurityContext> lstSecurityContext = event
                .getSecurityContexts();

        for (SecurityContext securityContext : lstSecurityContext)
        {
        	logger.info(securityContext.toString());
        	WebAuthenticationDetails wad  = (WebAuthenticationDetails) securityContext.getAuthentication().getDetails();
        	String username = securityContext.getAuthentication().getName();
        	String idSesion = wad.getSessionId();
        	String direccionIp = wad.getRemoteAddress();
        	userDetailsDao.updateAccessDateLogout(username, idSesion,direccionIp);
        }
	}
	public UserDetailsDao getUserDetailsDao() {
		return userDetailsDao;
	}
	public void setUserDetailsDao(UserDetailsDao userDetailsDao) {
		this.userDetailsDao = userDetailsDao;
	}
}
