using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Modal;
using DAL.Persistence;

namespace site.Pages
{
    public partial class AddProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdicionarJogo(object sender, EventArgs e)
        {
            try
            {
                Jogo j = new Jogo();

                j.Nome = txtNome.Text;
                j.Genero = txtGenero.Text;
                j.Class = txtClass.Text;
                j.Preco = txtPreco.Text;

                JogoDal d = new JogoDal();
                d.Gravar(j);
                lblMensagem.Text = "Jogo" + j.Nome + "gravado";

                txtNome.Text = string.Empty;
                txtGenero.Text = string.Empty;
                txtClass.Text = string.Empty;
                txtPreco.Text = string.Empty;
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }
    }
}