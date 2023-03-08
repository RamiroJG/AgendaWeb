package beans;

public class Contacto {
	// Atributos
	private int idContacto;
	private String nombre;
	private String email;
	private int telefono;
	
	// Constructor
	public Contacto(int idContacto, String nombre, String email, int telefono) {
		super();
		this.idContacto = idContacto;
		this.nombre = nombre;
		this.email = email;
		this.telefono = telefono;
	}
	public Contacto() {
		super();
	}
	
	// Getters and Setters
	public int getIdContacto() {
		return idContacto;
	}
	public void setIdContacto(int idContacto) {
		this.idContacto = idContacto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	
}