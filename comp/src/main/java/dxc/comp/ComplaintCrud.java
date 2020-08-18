package dxc.comp;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;





public class ComplaintCrud {
	public String addComplaint(Complaint complaint) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(complaint);
		return "Complaint is successfully Added...";
	}
	public String addResolve(Resolve resolve) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		ht.save(resolve);
		return "Complaint resolved successfully...";
	}
	public List<Resolve> showResolve() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("application-context.xml");
		HibernateTemplate ht=(HibernateTemplate)ctx.getBean("hibernateTemplate");
		List<Resolve> resolve = ht.find("from Resolve");
		return resolve;
	}

		
	

}
