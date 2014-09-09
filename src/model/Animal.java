package model;

import java.util.Date;

public class Animal {
	private int id;
	private String nome;
	private String especie;
	private int dono_id;
	private String raca;
	private String pelagem;
	private String porte;
	
	public Animal(String nome, int dono_id, String raca, String pelagem, String porte, String especie){
		setDono(dono_id);
		setNome(nome);
		setRaca(raca);
		setPelagem(pelagem);
		setEspecie(especie);
		setPorte(porte);
	}
	public Animal(){
	}
	
	public String toString(){
		return "Nome: " + getNome() +
				"\nEspécie: " + getEspecie() +
				"\nRaça: " + getRaca() +
				"\nPorte: " + getPorte() +
				"\nPelagem: " + getPelagem() + "\n";
	}
	//GETTERS
	public String getNome() {
		return nome;
	}
	public int getId() {
		return id;
	}
	public int getDono() {
		return dono_id;
	}
	public String getRaca() {
		return raca;
	}
	public String getPelagem() {
		return pelagem;
	}
	public String getEspecie() {
		return especie;
	}
	public int getDono_id() {
		return dono_id;
	}
	public String getPorte() {
		return porte;
	}
	//SETTERS
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setDono(int dono_id) {
		this.dono_id = dono_id;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	public void setPelagem(String pelagem) {
		this.pelagem = pelagem;
	}
	public void setDono_id(int dono_id) {
		this.dono_id = dono_id;
	}
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	public void setPorte(String porte) {
		this.porte = porte;
	}
}
