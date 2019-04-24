package org.ecom.qs.metier;

import java.util.List;

import org.ecom.qs.entities.Categorie;
import org.ecom.qs.entities.Client;
import org.ecom.qs.entities.Commande;
import org.ecom.qs.entities.Panier;
import org.ecom.qs.entities.Produit;

public interface InternauteMetier {
	public List<Categorie> listCategories();
	public Categorie getCategorie(Long idCat);
	public List<Produit> listproduits();
	public List<Produit> produitsParMotCle(String mc);
	public List<Produit> produitsParCategorie(Long idCat);
	public List<Produit> produitsSelectionnes();
	public Produit getProduit(Long idP);
	public Commande enregistrerCommande(Panier p,Client c);
}
