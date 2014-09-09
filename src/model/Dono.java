package model;

import java.util.ArrayList;
public class Dono {
	private String nome;
	private String senha;
	private String email;
	private String telefone;
	private int id;
	private String endereco;
	private ArrayList<Animal> meusAnimais;
	
	public Dono(String nome, String email, String senha, String telefone, String endereco){
		setSenha(senha);
		setEndereco(endereco);
		setEmail(email);
		setNome(nome);
		setTelefone(telefone);
		meusAnimais = new ArrayList<>();
	}
	
	public Dono(){
		meusAnimais = new ArrayList<>();
	}
	
	public String toString(){
		return "Login: " + getNome() +
				"\nID: " + getId() +
				"\nTelefone: " + getTelefone() +
				"\nEndereço: " + getEndereco();
	}
	// String de lista de animais
	public String meusAnimaisToString(){
		String srt = "";
		if(temAnimal()){
			for(Animal gat : meusAnimais){
				srt += gat.toString() + "\n-------------\n";
			}
		}
		else{
			srt = "Não há animais cadastrados.";
		}
		return srt;
	}
	// Adiciona animais
	public void addMeuAnimal(Animal g){
		meusAnimais.add(g);
	}
	//Remove animais
	public void removeMeuAnimal(Animal g){
		meusAnimais.remove(g);
	}
	// Verifica se Dono possue um animal
	public boolean temAnimal(){
		return !(meusAnimais.isEmpty());
	}
	
	//GETTERS
	public String getNome() {
		return nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public int getId() {
		return id;
	}
	public String getEndereco() {
		return endereco;
	}
	public String getSenha() {
		return senha;
	}
	public String getEmail() {
		return email;
	}
	
	//SETTERS
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public ArrayList<Animal> getMeusAnimais() {
		return meusAnimais;
	}
	public void setMeusAnimais(ArrayList<Animal> meusAnimais) {
		this.meusAnimais = meusAnimais;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}