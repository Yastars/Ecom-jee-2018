package org.ecom.qs;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.ecom.qs.entities.Categorie;
import org.ecom.qs.metier.IAdminCategoriesMetier;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJPA {

	@Test
	public void test() {
		try {
		ClassPathXmlApplicationContext app=
		new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
		IAdminCategoriesMetier metier = (IAdminCategoriesMetier) app.getBean("metier");
		List<Categorie> cts1=metier.listCategories();
		metier.ajouterCategorie(new Categorie("Ordinateurs","Ordx",null,"image1.jpg"));
		metier.ajouterCategorie(new Categorie("Imprimantes","Impx",null,"image1.jpg"));
		List<Categorie> cts2=metier.listCategories();
		assertTrue(cts1.size()+2==cts2.size());
		assertTrue(true);
		for(Categorie item : cts1)
			assertTrue(item.getnomCategorie(),true);
		} catch (Exception e) {
		assertTrue(e.getMessage(),false);
		}
}
}
