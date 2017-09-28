namespace MS2000.Desktop.Menu.ISO
{
    partial class FrmFormularioISO
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lstbxFormulario = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // lstbxFormulario
            // 
            this.lstbxFormulario.BackColor = System.Drawing.SystemColors.Window;
            this.lstbxFormulario.FormattingEnabled = true;
            this.lstbxFormulario.Items.AddRange(new object[] {
            "Controle de Veiculos",
            "Controle de Celular /Smartphone",
            "Controle de Notebook",
            "Controle de Modem",
            "Procedimentos Iniciais",
            "Requisição de Pessoal",
            "Registro de Treinamento",
            "Coleta de preços",
            "Ordem de Compras",
            "Requisição de Compras",
            "Lista de Materiais",
            "Relatório de Avaliação de Fornecedores",
            "Relatório de Comunicação externa",
            "Medição e Monitoramento",
            "Ficha para admissão",
            "Controle de Entrega de EPI",
            "Requisição de Mudanças",
            "Jogo de Documentos para DI",
            "Jogo de documentos para aprovação do RAT",
            "Jogo de documentos para Transferência de Regime e Titularidade",
            "Anexo A - Procedimento IT 23",
            "Termo de Responsabilidade Controle Ar-Condicionado",
            "Procedimentos por Cargo",
            "Registro de Reclamações de Clientes"});
            this.lstbxFormulario.Location = new System.Drawing.Point(12, 12);
            this.lstbxFormulario.Name = "lstbxFormulario";
            this.lstbxFormulario.Size = new System.Drawing.Size(271, 329);
            this.lstbxFormulario.TabIndex = 0;
            this.lstbxFormulario.DoubleClick += new System.EventHandler(this.lstbxFormulario_DoubleClick);
            // 
            // FrmFormularioISO
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.ClientSize = new System.Drawing.Size(295, 352);
            this.Controls.Add(this.lstbxFormulario);
            this.Name = "FrmFormularioISO";
            this.Tag = "80203";
            this.Text = "Formulário";
            this.Load += new System.EventHandler(this.FrmFormularioISO_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lstbxFormulario;
    }
}
