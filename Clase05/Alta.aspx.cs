using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase05 {
    public partial class Alta : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void AltaButton_Click(object sender, EventArgs e) {
            InsertArticuloSqlDS.InsertParameters["descripcion"].DefaultValue = descripcionTextBox.Text;
            InsertArticuloSqlDS.InsertParameters["precio"].DefaultValue = PrecioTextBox.Text;
            InsertArticuloSqlDS.InsertParameters["codigorubro"].DefaultValue = RubroDropDownList.SelectedValue;

            int resultado = InsertArticuloSqlDS.Insert();
            if(resultado > 0) {
                ResultadoLabel.Text = $"Se ha insertado con exito el producto";
            } else {
                ResultadoLabel.Text = $"Ocurrio un error al insertar el producto";
            }
        }
    }
}