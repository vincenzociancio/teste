using MS2000.Desktop.Classes;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmUsuariosAutorizacoes : MS2000.Desktop.Componentes.MSForm01
    {
        class AutorizacaoLocal
        {
            public int ID { get; set; }
            public string Descricao { get; set; }
            public bool Acessa { get; set; }
        }

        class UsuarioClientesLocal
        {
            public int ID { get; set; }
            public string RazaoSocial { get; set; }
            public string CodigoCliente { get; set; }
        }

        public int PK_Usuario { get; set; }
        public string Usuario { get; set; }

        private TreeViewCancelEventHandler checkForCheckedChildren;
        private DataTable _tabelaMenus;
        private List<AutorizacaoLocal> _listaAutorizacaoOld;
        private List<AutorizacaoLocal> _listaAutorizacaoNew;

        private List<UsuarioClientesLocal> _UsuarioClientes;
        private List<UsuarioClientesLocal> _UsuarioNotClientes;

        public FrmUsuariosAutorizacoes()
        {
            InitializeComponent();
            checkForCheckedChildren = new TreeViewCancelEventHandler(CheckForCheckedChildrenHandler);
            _listaAutorizacaoOld = new List<AutorizacaoLocal>();
            _listaAutorizacaoNew = new List<AutorizacaoLocal>();
            _UsuarioClientes = new List<UsuarioClientesLocal>();
            _UsuarioNotClientes = new List<UsuarioClientesLocal>();
        }

        private void FrmUsuariosAcessoMenu_Load(object sender, EventArgs e)
        {
            trwMain.BeginUpdate();
            trwMain.Nodes.Clear();
            trwMain.CollapseAll();
            trwMain.BeforeExpand += checkForCheckedChildren;
            populateTree();
            trwMain.ExpandAll();
            trwMain.BeforeExpand -= checkForCheckedChildren;
            trwMain.EndUpdate();
            _listaAutorizacaoOld = getAutorizacaoEspecificaByPKUsuario(PK_Usuario);
            _listaAutorizacaoNew = getAutorizacaoEspecificaByPKUsuario(PK_Usuario);

            bindingSource.DataSource = _listaAutorizacaoNew;
            dataGridView.AutoGenerateColumns = false;
            dataGridView.DataSource = bindingSource;

            /*Aba Clientes*/
           
            _UsuarioNotClientes = getNotUsuarioClientesByPKUsuario(PK_Usuario);
            lstUnselected.Items.AddRange(_UsuarioNotClientes.ToArray());
            lstUnselected.DisplayMember = "RazaoSocial";
           

            _UsuarioClientes = getUsuarioClientesByPKUsuario(PK_Usuario);
            lstSelected.Items.AddRange(_UsuarioClientes.ToArray());
            lstSelected.DisplayMember = "RazaoSocial";
    

            SetButtonsEditable();
        }


        private void populateTree()
        {
            int x = 0;
            int y = 0;
            int z = 0;
            int w = 0;
            _tabelaMenus = getMenus(this.PK_Usuario);
            foreach (DataRow row in _tabelaMenus.Rows)
            {
                if (row["Codigo"].ToString().Trim().Length == 1)
                {
                    TreeNode _node = new TreeNode();
                    _node.Text = row["Descricao"].ToString();
                    _node.Tag = row["ID"].ToString();
                    _node.Checked = Convert.ToBoolean(row["Acessa"]);
                    trwMain.Nodes.Add(_node);
                    x++;
                    y = 0;
                    z = 0;
                    w = 0;
                }
                else
                    if (row["Codigo"].ToString().Trim().Length == 3)
                    {
                        TreeNode _node3 = new TreeNode();
                        _node3.Text = row["Descricao"].ToString();
                        _node3.Tag = row["ID"].ToString();
                        _node3.Checked = Convert.ToBoolean(row["Acessa"]);
                        trwMain.Nodes[x - 1].Nodes.Add(_node3);
                        y++;
                        z = 0;
                        w = 0;
                    }
                    else
                        if (row["Codigo"].ToString().Trim().Length == 5)
                        {
                            try
                            {
                                TreeNode _node5 = new TreeNode();
                                _node5.Text = row["Descricao"].ToString();
                                _node5.Tag = row["ID"].ToString();
                                _node5.Checked = Convert.ToBoolean(row["Acessa"]);
                                trwMain.Nodes[x - 1].Nodes[y - 1].Nodes.Add(_node5);
                                z++;
                                w = 0;
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }
                        }
                        else
                            if (row["Codigo"].ToString().Length == 7)
                            {
                                TreeNode _node7 = new TreeNode();
                                _node7.Text = row["Descricao"].ToString();
                                _node7.Tag = row["ID"].ToString();
                                _node7.Checked = Convert.ToBoolean(row["Acessa"]);
                                trwMain.Nodes[x - 1].Nodes[y - 1].Nodes[z - 1].Nodes.Add(_node7);
                                w++;
                            }
                            else
                                if (row["Codigo"].ToString().Length == 9)
                                {
                                    TreeNode _node9 = new TreeNode();
                                    _node9.Text = row["Descricao"].ToString();
                                    _node9.Tag = row["ID"].ToString();
                                    _node9.Checked = Convert.ToBoolean(row["Acessa"]);
                                    trwMain.Nodes[x - 1].Nodes[y - 1].Nodes[z - 1].Nodes[w - 1].Nodes.Add(_node9);
                                }

            }

        }

        private DataTable getMenus(int pk_usuario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT um.ID, m.Codigo, m.Descricao, um.Acessa " +
                "FROM Menus AS m " +
                "LEFT JOIN UsuariosMenus AS um ON m.Codigo = um.Menu " +                
                "WHERE um.FK_Usuario = @pk_usuario AND m.Habilitado = 1 and not  m.Codigo in('11') " +
                "ORDER BY m.Codigo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@pk_usuario", pk_usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }

        }

        private void CheckAllChildNodes(TreeNode treeNode, bool nodeChecked)
        {
            foreach (TreeNode node in treeNode.Nodes)
            {
                node.Checked = nodeChecked;
                if (node.Nodes.Count > 0)
                {
                    // If the current node has child nodes, call the CheckAllChildsNodes method recursively. 
                    this.CheckAllChildNodes(node, nodeChecked);
                }
            }
        }

        private void trwMain_AfterCheck(object sender, TreeViewEventArgs e)
        {
            if (e.Action != TreeViewAction.Unknown)
            {
                if (e.Node.Nodes.Count > 0)
                {
                    /* Calls the CheckAllChildNodes method, passing in the current 
                    Checked value of the TreeNode whose checked state changed. */
                    this.CheckAllChildNodes(e.Node, e.Node.Checked);
                }
            }
            btnSalvarMenu.Enabled = true;
        }

        private void CheckForCheckedChildrenHandler(object sender, TreeViewCancelEventArgs e)
        {
            if (!HasCheckedChildNodes(e.Node)) e.Cancel = true;
        }

        private bool HasCheckedChildNodes(TreeNode node)
        {
            if (node.Nodes.Count == 0) return false;
            foreach (TreeNode childNode in node.Nodes)
            {
                if (childNode.Checked) return true;
                // Recursively check the children of the current child node.
                if (HasCheckedChildNodes(childNode)) return true;
            }
            return false;
        }

        private List<AutorizacaoLocal> getAutorizacaoEspecificaByPKUsuario(int pk_usuario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select eu.ID, ae.Descricao, eu.Acessa " +
                "from AutorizacaoEspecifica ae " +
                "inner join AutorizacaoEspecificaUsuarios eu on ae.ID = eu.FK_AutorizacaoEspecifica " +
                "where eu.FK_Usuario = @pk_usuario " +
                "order by ae.Formulario, ae.Descricao";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@pk_usuario", pk_usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<AutorizacaoLocal> lista = new List<AutorizacaoLocal>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new AutorizacaoLocal
                            {
                                ID = Convert.ToInt32(reader["ID"]),
                                Descricao = reader["Descricao"].ToString(),
                                Acessa = Convert.ToBoolean(reader["Acessa"].ToString())
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private List<UsuarioClientesLocal> getUsuarioClientesByPKUsuario(int pk_usuario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select RIGHT(REPLICATE('0', 4)+ CAST(uc.Importador AS varchar(4)), 4) +'  |  '+i.Razao_Social as 'Full', uc.Importador, i.Razao_Social, uc.ID " +
                "from UsuariosClientes uc " +
                "inner join Importadores i ON uc.Importador = i.Codigo " +
                "where uc.FK_Usuario = @pk_usuario ORDER BY i.Razao_Social, i.Codigo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@pk_usuario", pk_usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioClientesLocal> lista = new List<UsuarioClientesLocal>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioClientesLocal
                            {
                                ID = Convert.ToInt32(reader["ID"].ToString()),
                                CodigoCliente = reader["Importador"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private List<UsuarioClientesLocal> getNotUsuarioClientesByPKUsuario(int pk_usuario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select RIGHT(REPLICATE('0', 4)+ CAST(i.Codigo AS varchar(4)), 4) +'  |  '+i.Razao_Social as 'Full', i.Codigo " +
                "from Importadores i " +
                "WHERE i.CGC_CPF <> '' " +
                "AND Not Exists (SELECT u.FK_Usuario FROM UsuariosClientes u WHERE u.Importador = i.Codigo AND " +
                "u.FK_Usuario = @pk_usuario) ORDER BY i.Razao_Social, i.Codigo";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@pk_usuario", pk_usuario);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<UsuarioClientesLocal> lista = new List<UsuarioClientesLocal>();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            lista.Add(new UsuarioClientesLocal
                            {
                                CodigoCliente = reader["Codigo"].ToString(),
                                RazaoSocial = reader["Full"].ToString()
                            });
                        }
                    }
                    return lista;
                }
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void updateAutorizacaoEspecifica(int id, bool acessa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "update AutorizacaoEspecificaUsuarios set acessa = @acessa where id = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@acessa", acessa);
                cmd.ExecuteNonQuery();
            }
        }

        private void updateUsuarioMenus(int id, bool acessa)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "update UsuariosMenus set acessa = @acessa where id = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@acessa", acessa);
                cmd.ExecuteNonQuery();
            }
        }

        private void deleteUsuarioClientes(int id)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "delete from UsuariosClientes where id = @id";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@id", id);                
                cmd.ExecuteNonQuery();
            }
        }

        private int insertUsuarioClientes(int pk_usuario, string usuario, string pk_importador)
        {            
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "insert into UsuariosClientes(Importador, Usuario, FK_Usuario)values(@Importador, @Usuario, @FK_Usuario); SELECT SCOPE_IDENTITY()";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Importador", pk_importador);
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@FK_Usuario", pk_usuario);
                int newID = Convert.ToInt32(cmd.ExecuteScalar());
                return newID;
            }
        }

        //public TreeNode FromID(string itemId, TreeNode rootNode)
        //{
        //    foreach (TreeNode node in rootNode.Nodes)
        //    {
        //        if (node.Tag.Equals(itemId)) 
        //            return node;
                
        //        TreeNode next = FromID(itemId, node);
                
        //        if (next != null) 
        //            return next;
        //    }
        //    return null;
        //}

       ////Usage    
       //TreeNode itemNode = null;
       //foreach (TreeNode node in trwMain.Nodes)
       //{
       //    itemNode = FindNodeWithTag(trwMain.Nodes, "4240306");
       //    if (itemNode != null) break;
       //}

        private TreeNode FindNodeWithTag(TreeNodeCollection nodes, int tag)
        {
            foreach (TreeNode node in nodes)
            {
                if (Convert.ToInt32(node.Tag) == tag)
                    return node;

                TreeNode candidate = FindNodeWithTag(node.Nodes, tag);

                if (candidate != null)
                    return candidate;
            }
            return null;
        }

        private void btnSalvarMenu_Click(object sender, EventArgs e)
        {
            btnSalvarMenu.Enabled = false;
            tabControl1.Enabled = false;
            btnFechar.Enabled = false;
            toolStripStatusLabel1.Visible = true;
            Application.DoEvents();
            int _max = _tabelaMenus.Rows.Count;
            toolStripProgressBar1.Maximum = _max;

            bool _alteracaoOK = false;

            foreach (DataRow row in _tabelaMenus.Rows)
            {
                TreeNode itemNode = null;
                itemNode = FindNodeWithTag(trwMain.Nodes, Convert.ToInt32(row["ID"]));

                if (Convert.ToBoolean(row["Acessa"]) != itemNode.Checked)
                {
                    updateUsuarioMenus(Convert.ToInt32(itemNode.Tag.ToString()), itemNode.Checked);
                    LogSistemas.AddLogSistema(itemNode.Tag.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("{0} - Acessa:{1}", row["Descricao"].ToString(), itemNode.Checked.ToString()));
                    _alteracaoOK = true;
                }
                toolStripProgressBar1.Value += 1;
            }
            toolStripStatusLabel1.Visible = false;
            toolStripProgressBar1.Value = 0;
            btnFechar.Enabled = true;
            tabControl1.Enabled = true;
            if (_alteracaoOK)
            {
                MessageBox.Show("Dados gravados com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            
        }

        private void btnSalvarEspecifica_Click(object sender, EventArgs e)
        {
            btnSalvarEspecifica.Enabled = false;
            tabControl1.Enabled = false;
            btnFechar.Enabled = false;
            toolStripStatusLabel1.Visible = true;
            Application.DoEvents();
            int _max = _listaAutorizacaoOld.Count;
            toolStripProgressBar1.Maximum = _max;

            bool _alteracaoOK = false;

            dataGridView.EndEdit();
            foreach (DataGridViewRow row in dataGridView.Rows)
            {
                AutorizacaoLocal novo = row.DataBoundItem as AutorizacaoLocal;
                AutorizacaoLocal old = _listaAutorizacaoOld.Find(c => c.ID == novo.ID);
                if (novo.Acessa != old.Acessa)
                {
                    updateAutorizacaoEspecifica(novo.ID, novo.Acessa);
                    LogSistemas.AddLogSistema(novo.ID.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("{0} - Acessa:{1}", novo.Descricao, novo.Acessa.ToString()));
                    _alteracaoOK = true;
                }
                toolStripProgressBar1.Value += 1;
            }
            toolStripStatusLabel1.Visible = false;
            toolStripProgressBar1.Value = 0;
            btnFechar.Enabled = true;
            tabControl1.Enabled = true;
            if (_alteracaoOK)
            {
                MessageBox.Show("Dados gravados com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            btnSalvarEspecifica.Enabled = bindingSource.AllowEdit;            
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            MoveSelectedItems(lstUnselected, lstSelected);
        }

        private void btnSelectAll_Click(object sender, EventArgs e)
        {
            MoveAllItems(lstUnselected, lstSelected);
        }

        private void btnDeselect_Click(object sender, EventArgs e)
        {
            MoveSelectedItems(lstSelected, lstUnselected);
        }

        private void btnDeselectAll_Click(object sender, EventArgs e)
        {
            MoveAllItems(lstSelected, lstUnselected);
        }

        private void SetButtonsEditable()
        {
            btnSelect.Enabled = (lstUnselected.SelectedItems.Count > 0);
            btnSelectAll.Enabled = (lstUnselected.Items.Count > 0);
            btnDeselect.Enabled = (lstSelected.SelectedItems.Count > 0);
            btnDeselectAll.Enabled = (lstSelected.Items.Count > 0);
        }

        private void lstUnselected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

        private void lstSelected_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }

        private void MoveAllItems(ListBox lstFrom, ListBox lstTo)
        {
            tabControl1.Enabled = false;
            btnFechar.Enabled = false;
            toolStripStatusLabel1.Visible = true;
            Application.DoEvents();
            int _max = lstFrom.Items.Count;
            toolStripProgressBar1.Maximum = _max;
            foreach (UsuarioClientesLocal item in lstFrom.Items)
	        {
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                    item.ID = 0;
                    lstTo.Items.Add(item);
                }
                else
                {
                    item.ID = insertUsuarioClientes(PK_Usuario, Usuario, item.CodigoCliente);
                    lstTo.Items.Add(item);
                } 
                toolStripProgressBar1.Value += 1;
	        }
            //lstTo.Items.AddRange(lstFrom.Items);
            lstFrom.Items.Clear();
            SetButtonsEditable();
            toolStripStatusLabel1.Visible = false;
            toolStripProgressBar1.Value = 0;
            btnFechar.Enabled = true;
            tabControl1.Enabled = true;
        }

        private void MoveSelectedItems(ListBox lstFrom, ListBox lstTo)
        {
            tabControl1.Enabled = false;
            btnFechar.Enabled = false;
            toolStripStatusLabel1.Visible = true;
            Application.DoEvents();
            int _max = lstFrom.Items.Count;
            toolStripProgressBar1.Maximum = _max;

            while (lstFrom.SelectedItems.Count > 0)
            {
                UsuarioClientesLocal item = (UsuarioClientesLocal)lstFrom.SelectedItems[0];
                if (item.ID > 0)
                {
                    deleteUsuarioClientes(item.ID);
                }
                else
                {
                    item.ID = insertUsuarioClientes(PK_Usuario, Usuario, item.CodigoCliente);
                }
                lstTo.Items.Add(item);
                lstFrom.Items.Remove(item);
                toolStripProgressBar1.Value += 1;
            }
            SetButtonsEditable();
            toolStripStatusLabel1.Visible = false;
            toolStripProgressBar1.Value = 0;
            btnFechar.Enabled = true;
            tabControl1.Enabled = true;
        }

        private void lstUnselected_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            SetButtonsEditable();
        }
    }
}
