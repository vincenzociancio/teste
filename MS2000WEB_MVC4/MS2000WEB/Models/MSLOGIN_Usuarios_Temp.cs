using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Usuarios_Temp
    {
        public int PK_USUARIO { get; set; }
        public string LOGIN { get; set; }
        public string SENHA { get; set; }
        public string FRASE_SECRETA { get; set; }
        public string NOME_COMPLETO { get; set; }
        public Nullable<System.DateTime> DATA_VALIDADE_SENHA { get; set; }
        public string EMAIL { get; set; }
        public string SENHA_EMAIL { get; set; }
        public Nullable<int> TAMANHO_MAXIMO_ANEXO { get; set; }
        public Nullable<int> ATIVO { get; set; }
        public string TIPO_USUARIO { get; set; }
        public string EMAIL_MSW { get; set; }
        public string SENHA_EMAIL_MSW { get; set; }
    }
}
