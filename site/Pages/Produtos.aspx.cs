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
    public partial class Produtos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDados.Visible = false;
        }

        protected void btnPesquisarJogo(object sender, EventArgs e)
        {
            try
            {
                int Codigo = Convert.ToInt32(txtCodigo.Text);
                
                JogoDal d = new JogoDal();
                Jogo j= d.ObterPorCodigo(Codigo);

                if (j !=null)
                {
                    pnlDados.Visible = true;
                    txtNome.Text = j.Nome;
                    txtGenero.Text = j.Genero;
                    txtClass.Text = j.Class;
                    txtPreco.Text = j.Preco;
                }

                else
                {
                    lblMensagem.Text = "Jogo nao encontrado";

                    txtCodigo.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }

        protected void btnExcluirJogo(object sender, EventArgs e)
        {
            try
            {
                int Codigo = Convert.ToInt32(txtCodigo.Text);

                Jogo j = new Jogo();
                JogoDal d = new JogoDal();

                d.Excluir(Codigo);
                lblMensagem.Text = "Jogo" + j.Nome + "Excluido";

                txtCodigo.Text = string.Empty;
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

        protected void btnAtualizarJogo(object sender, EventArgs e)
        {
            try
            {
                Jogo j = new Jogo();

                j.Codigo = Convert.ToInt32(txtCodigo.Text);
                j.Nome = Convert.ToString(txtNome.Text);
                j.Genero = Convert.ToString(txtGenero.Text);
                j.Class = Convert.ToString(txtClass.Text);
                j.Preco = Convert.ToString(txtPreco.Text);

                JogoDal d = new JogoDal();
                d.Atualizar(j);

                lblMensagem.Text = "Jogo" + j.Nome + "atualizado";

                txtCodigo.Text = string.Empty;
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