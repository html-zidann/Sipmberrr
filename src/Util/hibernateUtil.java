package Util;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class hibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration cfg = new Configuration().configure("META-INF/hibernate/hibernate.cfg.xml");
            cfg.configure("hibernate.cfg.xml");

            
            cfg.addAnnotatedClass(Model.staff.class);
            cfg.addAnnotatedClass(Model.admin.class);
            cfg.addAnnotatedClass(Model.staffPelatihan.class);
            cfg.addAnnotatedClass(Model.pendaftar.class);
            cfg.addAnnotatedClass(Model.pelatihan.class);
            cfg.addAnnotatedClass(Model.peserta.class);
            cfg.addAnnotatedClass(Model.sertifikat.class);

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(cfg.getProperties()).build();

            sessionFactory = cfg.buildSessionFactory(serviceRegistry);

        } catch (HibernateException ex) {
            System.err.println("Initial SessionFactory creation failed. " + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}
