
package controlador;


import java.sql.*; //libreria general bs sql
import java.util.ArrayList;//libreria para asociaciones de clase
import java.util.List;//libreria de listas de datos
import nodelo.Autobus;

public class AutobusDAO {//inicia clase

    public List<Autobus> listar() throws SQLException {
        List<Autobus> lista = new ArrayList<>();
        String sql = "SELECT codigo, marca, modelo, numasientos, Horario FROM tautobuses ORDER BY codigo DESC";
        try ( Connection c = BDUtil.getConnection();  PreparedStatement ps = c.prepareStatement(sql);  ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Autobus a = new Autobus();
                a.setCodigo(rs.getInt("codigo"));
                a.setMarca(rs.getString("marca"));
                a.setModelo(rs.getString("modelo"));
                a.setNumAsientos(rs.getInt("numAsientos"));
                a.setHorario(rs.getString("horario"));
                lista.add(a);
            }
        }
        return lista;
    }
}
    /*

    public void crear(Autobus a) throws SQLException {
        String sql = "INSERT INTO empleados(nombre, apellido, correo, salario, fecha_ingreso) VALUES(?,?,?,?,?)";
        try ( Connection c = DBUtil.getConnection();  PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getApellido());
            ps.setString(3, e.getCorreo());
            ps.setDouble(4, e.getSalario());
            ps.setDate(5, e.getFechaIngreso());
            ps.executeUpdate();
        }
    }

    public Empleado encontrarPorId(int id) throws SQLException {
        String sql = "SELECT id, nombre, apellido, correo, salario, fecha_ingreso FROM empleados WHERE id=?";
        try ( Connection c = DBUtil.getConnection();  PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, id);
            try ( ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Empleado e = new Empleado();
                    e.setId(rs.getInt("id"));
                    e.setNombre(rs.getString("nombre"));
                    e.setApellido(rs.getString("apellido"));
                    e.setCorreo(rs.getString("correo"));
                    e.setSalario(rs.getDouble("salario"));
                    e.setFechaIngreso(rs.getDate("fecha_ingreso"));
                    return e;
                }
            }
        }
        return null;
    }

    public void actualizar(Empleado e) throws SQLException {
        String sql = "UPDATE empleados SET nombre=?, apellido=?, correo=?, salario=?, fecha_ingreso=? WHERE id=?";
    }
*/