using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase05 {
    public partial class Baja : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void BorrarButton_Click(object sender, EventArgs e) {
            DeleteDataSource.DeleteParameters["codigo"].DefaultValue = CodigoTextBox.Text;

            
            int resultado = DeleteDataSource.Delete();
            if (resultado > 0) {
                ResultadoLabel.Text = $"Se ha eliminado el producto con codigo: {CodigoTextBox.Text}";
            } else {
                ResultadoLabel.Text = $"Ocurrio un error al eliminar el producto con codigo: {CodigoTextBox.Text}";
            }
        }
    }
}