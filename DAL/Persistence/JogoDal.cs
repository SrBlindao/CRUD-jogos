using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Modal;

namespace DAL.Persistence
{
    public class JogoDal : Conexao
    {
        public string Preco { get; set; }
        public string Class { get; set; }
        public string Genero { get; set; }
        public string Nome { get; set; }

        //Gravar dados
        public void Gravar (Jogo j)
        {
            try
            {
                //abrir conexao
                AbrirConexao();
                Cmd = new SqlCommand("insert into jogos (Nome, Genero, Class, Preco) values (@v1, @v2, @v3, @v4)", Con);

                Cmd.Parameters.AddWithValue("@v1", j.Nome);
                Cmd.Parameters.AddWithValue("@v2", j.Genero);
                Cmd.Parameters.AddWithValue("@v3", j.Class);
                Cmd.Parameters.AddWithValue("@v4", j.Preco);

                Cmd.ExecuteNonQuery(); //Executar metodo
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Gravar o Jogo:" + ex.Message);
            }

            finally
            {
                FecharConexao();
            }
        }

        //atualizar dados
        public void Atualizar (Jogo j)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("update jogos set Nome=@v1, Genero=@v2, Class=@v3, Preco=@v4 where Codigo=@v5", Con);

                Cmd.Parameters.AddWithValue("@v1", j.Nome);
                Cmd.Parameters.AddWithValue("@v2", j.Genero);
                Cmd.Parameters.AddWithValue("@v3", j.Class);
                Cmd.Parameters.AddWithValue("@v4", j.Preco);
                Cmd.Parameters.AddWithValue("@v5", j.Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao atualizar o Jogo:"+ ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
        //excluir dados
        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from jogos where Codigo=@v1", Con);
                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir o Jogo:"+ex.Message);
            }

            finally
            {
                FecharConexao();
            }
        }

        //Listar tudo
        public List<Jogo> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select*from jogos", Con);
                Dr = Cmd.ExecuteReader();

                List<Jogo> lista = new List<Jogo>(); //Lista Vazia

                while(Dr.Read())
                {
                    Jogo j = new Jogo();

                    j.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    j.Nome = Convert.ToString(Dr["Nome"]);
                    j.Genero = Convert.ToString(Dr["Genero"]);
                    j.Class = Convert.ToString(Dr["Class"]);
                    j.Preco = Convert.ToString(Dr["Preco"]);

                    lista.Add(j);
                }

                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception ("Erro ao listar jogos"+ex.Message);
            }
            finally
            {
                FecharConexao();
            }

           
        }

        public Jogo ObterPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from jogos where Codigo=@v1", Con);
                Cmd.Parameters.AddWithValue("@v1", Codigo);
                Dr = Cmd.ExecuteReader();

                Jogo j = null;

                if (Dr.Read())
                {
                    j = new Jogo();

                    j.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    j.Nome = Convert.ToString(Dr["Nome"]);
                    j.Genero = Convert.ToString(Dr["Genero"]);
                    j.Class = Convert.ToString(Dr["Class"]);
                    j.Preco = Convert.ToString(Dr["Preco"]);
                }

                return j;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Pesquisar o Jogo: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
