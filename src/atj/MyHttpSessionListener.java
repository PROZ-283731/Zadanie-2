package atj;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *  Implementation of session counter using HttpSessionListener interface
 *  @author Michał Dziewulski (M.Dziewulski@stud.elka.pw.edu.pl)
 *  @version 1.0
 */
public class MyHttpSessionListener implements HttpSessionListener{

    private static int activeSessionsCount;

    /**
     * Getter of private static activeSessionsCount field
     * @return Returns static variable that holds number of active sessions
     */
    public static int getActiveSessionsCount() {
        return activeSessionsCount;
    }

    /**
     * Method that is called on session creation
     * @param arg0 the HttpSessionEvent containing the session
     */
    @Override
    public void sessionCreated(HttpSessionEvent arg0) {
        activeSessionsCount++;
        System.out.println("Sessions after created: " + activeSessionsCount);
    }

    /**
     * Method called on session destruction
     * @param arg0 the HttpSessionEvent containing the session
     */
    @Override
    public void sessionDestroyed(HttpSessionEvent arg0) {
        activeSessionsCount--;
        System.out.println("Sessions after destroyed: " + activeSessionsCount);
    }
}
