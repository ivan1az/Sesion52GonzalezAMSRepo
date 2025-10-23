
package nodelo;


public class Autobus {
    private int codigo;
    private String marca;
    private String modelo;
    private int numAsientos;
    private String horario;

    public Autobus() {
    }

    public Autobus(int codigo, String marca, String modelo, int numAsientos, String horario) {
        this.codigo = codigo;
        this.marca = marca;
        this.modelo = modelo;
        this.numAsientos = numAsientos;
        this.horario = horario;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getNumAsientos() {
        return numAsientos;
    }

    public void setNumAsientos(int numAsientos) {
        this.numAsientos = numAsientos;
    }
    
    
}
