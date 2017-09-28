using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class ControleDeValidacoes
    {
        Importador importador = new Importador();
        Usuario usuario = new Usuario();
        Processo processo = new Processo();

        public bool LiberaAcessoProcesso(string cod_processo, string cod_importador, int? statusFechado)
        {            
            if (statusFechado == 1)
            {
                if (!FrmPrincipal.editaProcessoFechado)
                {
                    MessageBox.Show(@"Este processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }                       

                if (FrmPrincipal.editaProcessoFechado)
                {
                    MessageBox.Show(@"Este processo esta fechado, porém você tem permissão para editá-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return true;
                }                
            }

            importador = importador.BuscarPorCodigo(cod_importador);

            if (!usuario.AcessaCliente(cod_importador))
            {
                MessageBox.Show(@"Este Processo pertence a um Cliente que seu acesso não está permitido!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }            

            if (importador.Ativo == 0)
            {
                if (!FrmPrincipal.editaClienteInativo)
                {
                    MessageBox.Show(@"Este cliente está inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                if (FrmPrincipal.editaClienteInativo)
                {
                    MessageBox.Show(@"Este cliente está inativo, porém você tem permissão para editá-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return true;
                }                          
            }                                        

            return true;
        }
    }
}
