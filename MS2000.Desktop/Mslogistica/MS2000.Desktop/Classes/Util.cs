using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes
{
    public static class Util
    {
        public static DataRow GetCurrentDataRow(this System.Windows.Forms.BindingSource bindingSource)
        {
            if (bindingSource.Current == null)
                return null;
            else
                return ((DataRowView)bindingSource.Current).Row;
        }

        public static bool IsPasswordStrong(string password)
        {
            int tamanhoMinimo = 6;
            int tamanhoNumeros = 1;
            int tamanhoMinusculo = 1;

            // Definição de letras minusculas
            Regex regTamanhoMinusculo = new Regex("[a-zA-Z]");

            // Definição de letras minusculas
            Regex regTamanhoNumeros = new Regex("[0-9]");

            // Verificando tamanho minimo
            if (password.Length < tamanhoMinimo) return false;

            // Verificando numeros
            if (regTamanhoNumeros.Matches(password).Count < tamanhoNumeros)
                return false;

            // Verificando caracteres minusculos
            if ((regTamanhoMinusculo.Matches(password).Count < tamanhoMinusculo))
                return false;

            return true;
        }

        public static Image Crop(this Image image, Rectangle selection)
        {
            Bitmap bmp = image as Bitmap;

            // Check if it is a bitmap:
            if (bmp == null)
                throw new ArgumentException("No valid bitmap");

            // Crop the image:
            Bitmap cropBmp = bmp.Clone(selection, bmp.PixelFormat);

            // Release the resources:
            image.Dispose();

            return cropBmp;
        }

        public static Image Fit2PictureBox(this Image image, PictureBox picBox)
        {
            Bitmap bmp = null;
            Graphics g;

            // Scale:
            double scaleY = (double)image.Width / picBox.Width;
            double scaleX = (double)image.Height / picBox.Height;
            double scale = scaleY < scaleX ? scaleX : scaleY;

            // Create new bitmap:
            bmp = new Bitmap(
                (int)((double)image.Width / scale),
                (int)((double)image.Height / scale));

            // Set resolution of the new image:
            bmp.SetResolution(
                image.HorizontalResolution,
                image.VerticalResolution);

            // Create graphics:
            g = Graphics.FromImage(bmp);

            // Set interpolation mode:
            g.InterpolationMode = InterpolationMode.HighQualityBicubic;

            // Draw the new image:
            g.DrawImage(
                image,
                new Rectangle(            // Destination
                    0, 0,
                    bmp.Width, bmp.Height),
                new Rectangle(            // Source
                    0, 0,
                    image.Width, image.Height),
                GraphicsUnit.Pixel);

            // Release the resources of the graphics:
            g.Dispose();

            // Release the resources of the origin image:
            image.Dispose();

            return bmp;
        }

        //Método que valida o CPF
        public static bool ValidaCPF(string vrCPF)
        {
            string valor = vrCPF.Replace(".", "");
            valor = valor.Replace("-", "");

            if (valor.Length != 11)
                return false;

            bool igual = true;
            for (int i = 1; i < 11 && igual; i++)
                if (valor[i] != valor[0])
                    igual = false;

            if (igual || valor == "12345678909")
                return false;

            int[] numeros = new int[11];
            for (int i = 0; i < 11; i++)
                numeros[i] = int.Parse(
                valor[i].ToString());

            int soma = 0;
            for (int i = 0; i < 9; i++)
                soma += (10 - i) * numeros[i];

            int resultado = soma % 11;
            if (resultado == 1 || resultado == 0)
            {
                if (numeros[9] != 0)
                    return false;
            }
            else if (numeros[9] != 11 - resultado)
                return false;

            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += (11 - i) * numeros[i];

            resultado = soma % 11;

            if (resultado == 1 || resultado == 0)
            {
                if (numeros[10] != 0)
                    return false;

            }
            else
                if (numeros[10] != 11 - resultado)
                    return false;
            return true;

        }

        //Método que valida o CNPJ 
        public static bool ValidaCNPJ(string vrCNPJ)
        {
            string CNPJ = vrCNPJ.Replace(".", "");
            CNPJ = CNPJ.Replace("/", "");
            CNPJ = CNPJ.Replace("-", "");

            if (CNPJ == "00000000000000")
            {
                return false;
            }

            int[] digitos, soma, resultado;
            int nrDig;
            string ftmt;
            bool[] CNPJOk;

            ftmt = "6543298765432";
            digitos = new int[14];

            soma = new int[2];
            soma[0] = 0;
            soma[1] = 0;

            resultado = new int[2];
            resultado[0] = 0;
            resultado[1] = 0;

            CNPJOk = new bool[2];
            CNPJOk[0] = false;
            CNPJOk[1] = false;

            try
            {
                for (nrDig = 0; nrDig < 14; nrDig++)
                {
                    digitos[nrDig] = int.Parse(CNPJ.Substring(nrDig, 1));

                    if (nrDig <= 11)
                    {
                        soma[0] += (digitos[nrDig] * int.Parse(ftmt.Substring(nrDig + 1, 1)));
                    }

                    if (nrDig <= 12)
                    {
                        soma[1] += (digitos[nrDig] * int.Parse(ftmt.Substring(nrDig, 1)));
                    }
                }

                for (nrDig = 0; nrDig < 2; nrDig++)
                {
                    resultado[nrDig] = (soma[nrDig] % 11);

                    if ((resultado[nrDig] == 0) || (resultado[nrDig] == 1))
                    {
                        CNPJOk[nrDig] = (digitos[12 + nrDig] == 0);
                    }
                    else
                    {
                        CNPJOk[nrDig] = (digitos[12 + nrDig] == (11 - resultado[nrDig]));
                    }
                }

                return (CNPJOk[0] && CNPJOk[1]);
            }
            catch
            {
                return false;
            }

        }

        //Método que valida o Cep
        public static bool ValidaCep(string cep)
        {
            if (cep.Length == 8)
            {
                cep = cep.Substring(0, 5) + "-" + cep.Substring(5, 3);
            }

            return System.Text.RegularExpressions.Regex.IsMatch(cep, ("[0-9]{5}-[0-9]{3}"));
        }

        //Método que valida o Email
        public static bool ValidaEmail(string email)
        {
            return System.Text.RegularExpressions.Regex.IsMatch(email, ("(?<user>[^@]+)@(?<host>.+)"));
        }

        public static bool CodigoOuDescricaoJaExistente(string tabela, string Descricao, string Codigo, StatusCadastro statusCadastro)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query;

            if (statusCadastro == StatusCadastro.Novo)
            {
                query = "SELECT Codigo FROM " + tabela + " WHERE (Descricao = @Descricao) OR (Codigo = @Codigo) ";
            }
            else
            {
                query = "SELECT Codigo FROM " + tabela + " WHERE (Codigo <> @Codigo) AND (Descricao = @Descricao) ";
            }

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", Codigo);
                    cmd.Parameters.AddWithValue("@Descricao", Descricao);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            if (statusCadastro == StatusCadastro.Novo)
                            {
                                MessageBox.Show("Código ou Descrição já existente!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                            else
                            {
                                MessageBox.Show("Descrição já existente!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }

                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);

                return true;
            }
        }

        public static string CasasDecimais(this double valor, int casas)
        {
            return Math.Round(valor, casas).ToString("N" + casas).Replace(',', '.');
        }

        public static void MascaraMonetaria(ref TextBox txt)
        {
            string m = string.Empty;
            double v = 0;
            try
            {
                m = txt.Text.Replace(",", "").Replace(".", "");
                if (m.Equals(""))
                    m = "";
                m = m.PadLeft(3, '0');
                if (m.Length > 3 & m.Substring(0, 1) == "0")
                    m = m.Substring(1, m.Length - 1);


                if (m.Length > 3)
                {
                    // if (m.Substring(m.Length - 2, m.Length - 4) == "0")
                    //      m = m + "00";
                }
                v = Convert.ToDouble(m) / 100;
                txt.Text = string.Format("{0:0.00}", v);
                txt.SelectionStart = txt.Text.Length;

            }
            catch (Exception)
            {

                throw;
            }
        }        

        public static void SomenteNumero(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar) || //Espaço
                char.IsPunctuation(e.KeyChar)) //Pontuação
                e.Handled = true; //Não permitir          
        }

        public static void SomenteNumeroEPontuacao(KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar) || //Letras
                char.IsSymbol(e.KeyChar) || //Símbolos
                char.IsWhiteSpace(e.KeyChar)) //Espaço                
                e.Handled = true; //Não permitir                                            
        }
        public static decimal ItemConverteValorUnitario(this decimal valorUnitario, decimal acrescimo, decimal taxaConversao)
        {
            return ((valorUnitario + acrescimo) * taxaConversao);
        }
        public static decimal ItemConverteValorTotal(this decimal valorTotal, decimal acrescimo, decimal taxaConversao)
        {
            return ((valorTotal + acrescimo) * taxaConversao);
        }
        public static decimal ItemConverteRateioFretePrepaid(this decimal valor, decimal quantidadeItem, decimal taxaConversao)
        {
            return ((valor * quantidadeItem) * taxaConversao);
        }
        public static decimal ItemConverteValorII(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }
        public static decimal ItemConverteBaseIPI(this decimal valor, decimal valorII, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return valor + ((valorII / valorfob) * (valorVMLE * taxaConversao));
        }
        public static decimal ItemConverteValorIPI(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }
        public static decimal ItemConverteBasePIS(this decimal valor, object obj)
        {
            var type = obj.GetType();

            var aliquotaIcms = (decimal)type.GetProperty("aliq_icms").GetValue(obj, null);
            var aliquotaIcmsExtra = (decimal)type.GetProperty("aliq_icms_extra").GetValue(obj, null);
            var aliquotaIpi = (decimal)type.GetProperty("Aliq_NCM_IPI").GetValue(obj, null);
            var aliquotaIi = (decimal)type.GetProperty("Aliq_NCM_II").GetValue(obj, null);
            var aliquotaPis = (decimal)type.GetProperty("aliq_pis_pasep").GetValue(obj, null);
            var aliquotaCofins = (decimal)type.GetProperty("aliq_cofins").GetValue(obj, null);

            //transformando em porcentagem
            aliquotaIcms = (aliquotaIcms + aliquotaIcmsExtra) / 100;
            aliquotaIpi = aliquotaIpi / 100;
            aliquotaIi = aliquotaIi / 100;
            aliquotaPis = aliquotaPis / 100;
            aliquotaCofins = aliquotaCofins / 100;

            var aux1 = (1 + (aliquotaIcms) * (aliquotaIi + aliquotaIpi * (1 + aliquotaIi)));
            var aux2 = (1 - aliquotaPis - aliquotaCofins) * (1 - aliquotaIcms);
            var aux3 = (aux1 / aux2);

            return valor * aux3;
        }


        public static string CasasDecimais(this decimal valor, int casas)
        {
            return Math.Round(valor, casas).ToString("F" + casas).Replace(',', '.');
        }

        public static string CasasDecimais(this decimal? valor, int casas)
        {
            if (valor == null || valor == 0)
                return "";

            return CasasDecimais(valor.Value, casas);
        }

        public static string CasasDecimaisZero(this decimal? valor, int casas)
        {
            if (valor == null)
                return "";

            return CasasDecimais(valor.Value, casas);
        }

        public static decimal ItemConverteValorPIS(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }
        public static decimal ItemConverteValorCofins(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }
        public static decimal ItemConverteValorFecp(this decimal valor, decimal valorfob, decimal valorVMLE, decimal taxaConversao)
        {
            return (valor / valorfob) * (valorVMLE * taxaConversao);
        }

        /// <summary>
        /// Método para remover acentos.
        /// </summary>
        /// <param name="text">Texto com acento</param>
        /// <returns>Texto sem acento</returns>
        public static string RemoveAcentos(this string text)
        {
            if (text == null)
                return default(string);

            StringBuilder sbReturn = new StringBuilder();
            var arrayText = text.Normalize(NormalizationForm.FormD).ToCharArray();
            foreach (char letter in arrayText)
            {
                if (CharUnicodeInfo.GetUnicodeCategory(letter) != UnicodeCategory.NonSpacingMark)
                    sbReturn.Append(letter);
            }
            return sbReturn.ToString();
        }

        public static DateTime ProximoDiaUtil(DateTime data)
        {
            DateTime dt = data;
            if (data.DayOfWeek == DayOfWeek.Saturday)
            {
                dt = data.AddDays(2);
            }
            else if (data.DayOfWeek == DayOfWeek.Sunday)
            {
                dt = data.AddDays(1);
            }
            return dt;
        }

        public static bool IsDiaUtil(DateTime data)
        {
            bool retorno = true;
            if ((data.DayOfWeek == DayOfWeek.Saturday)|| (data.DayOfWeek == DayOfWeek.Sunday))
            {
                retorno = false;
            }            
            return retorno;
        }

        public static bool IsFeriado(DateTime data)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT * FROM Feriados WHERE Data = @data ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@data", data.Date);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        public static string MascaraCNPJ(this string valor)
        {
            return Convert.ToInt64(valor).ToString(@"00\.000\.000\/0000\-00");
        }

        public static string MascaraCPF(this string valor)
        {
            return Convert.ToInt64(valor).ToString(@"000\.000\.000\-00");
        }

        public static string ReadXmlEnumAttribute(this Enum value)
        {
            if (value == null)
                throw new ArgumentNullException("value");
            XmlEnumAttribute[] attribs = (XmlEnumAttribute[])value.GetType().GetField(value.ToString()).GetCustomAttributes(typeof(XmlEnumAttribute), true);

            if (attribs.Length > 0)
                return attribs[0].Name;
            else
                return value.ToString();
        }

        public static bool ValidaCampoDouble(this string valor)
        {
            try
            {
                Convert.ToDouble(valor);

                return true;
            }
            catch
            {                                
                return false;
            }
        }

        public static string caminhoDiretorioServidor(int codigo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string SQL = "SELECT CAMINHO FROM CAMINHODIRETORIOSERVIDOR WHERE ID = @codigo";

            SqlDataReader reader = null;

            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@codigo", codigo);

                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        return reader["CAMINHO"].ToString();
                    }
                }
                
                return "";
            }
        }
    }
}
