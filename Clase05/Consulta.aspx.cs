using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase05 {
    public partial class Consulta: System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ConsultaButton_Click(object sender, EventArgs e) {
            SqlDataSource1.SelectParameters["codigo"].DefaultValue = CodigoTextBox.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader sqlDataReader = (SqlDataReader) SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (sqlDataReader.Read()) {
                ResultadoLabel.Text = $"Descripcion: {sqlDataReader["descripcion"]} | precio: {sqlDataReader["precio"]} | rubro: {sqlDataReader["rubroDescripcion"]}";
            } else {
                ResultadoLabel.Text = $"No se encontro nada con el codigo: {CodigoTextBox.Text}";
            }
        }
    }
}