package ma.fstt.ejb;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

public class StudentRemoteEJB {
    public static StudentRemote getStudentRemote() throws NamingException {
        return (StudentRemote) getContext().lookup("ejb:/EjbStudent-1.0-SNAPSHOT/StudentImplementation!ma.fstt.ejb.StudentRemote");
    }

    private static Context getContext() throws NamingException {
        Properties jndiProperties = new Properties();
        jndiProperties.put(Context.INITIAL_CONTEXT_FACTORY,  "org.wildfly.naming.client.WildFlyInitialContextFactory");
        jndiProperties.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
        jndiProperties.put(Context.PROVIDER_URL,"http-remoting://localhost:8080");
        jndiProperties.put("jboss.naming.client.ejb.context",true);
        return new InitialContext(jndiProperties);
    }
}
