using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase05 {
    public partial class Modificacion : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ConsultaButton_Click(object sender, EventArgs e) {
            BuscarDataSource.SelectParameters["codigo"].DefaultValue = CodigoTextBox.Text;
            BuscarDataSource.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader sqlDataReader = (SqlDataReader)BuscarDataSource.Select(DataSourceSelectArguments.Empty);

            if (sqlDataReader.Read()) {
                descripcionTextBox.Text = $"{sqlDataReader["descripcion"]}";
                PrecioTextBox.Text = $"{sqlDataReader["precio"]}";
                RubroDropDownList.SelectedValue = $"{sqlDataReader["codigoRubro"]}";
            } 
        }

        protected void ModificacionButton_Click(object sender, EventArgs e) {
            UpdateSqlDataSource.UpdateParameters["descripcion"].DefaultValue = descripcionTextBox.Text;
            UpdateSqlDataSource.UpdateParameters["precio"].DefaultValue = PrecioTextBox.Text;
            UpdateSqlDataSource.UpdateParameters["codigoRubro"].DefaultValue = RubroDropDownList.SelectedValue;
            UpdateSqlDataSource.UpdateParameters["codigo"].DefaultValue = CodigoTextBox.Text;

            int resultado = UpdateSqlDataSource.Update();
            if (resultado > 0) {
                ResultadoLabel.Text = $"Se ha actualizado con exito el producto con codigo: {CodigoTextBox.Text}";
            } else {
                ResultadoLabel.Text = $"Ocurrio un error al insertar el producto";
            }
        }
    }
}