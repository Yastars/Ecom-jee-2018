package org.ecom.qs.metier;

import org.ecom.qs.entities.Categorie;
import org.ecom.qs.entities.Role;
import org.ecom.qs.entities.User;

public interface IAdminCategoriesMetier extends IAdminProduitsMetier {
	public Long ajouterCategorie(Categorie c);
	public void supprimerCategrorie(Long idcat);
	public void modifierCategorie(Categorie c);
	public void ajouterUser(User u);
	public void attribuerRole(Role r,Long userID);
}