unit U_extenso;

interface

function extenso (valor: real): string;

implementation

uses

SysUtils, Dialogs;

 

function extenso (valor: real): string;

var

Centavos, Centena, Milhar, Milhao, Texto, msg: string;

const

Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',

'Seis', 'Sete', 'Oito', 'Nove');

Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',

'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');

Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',

'Cinquenta', 'Sessenta', 'Setenta',

'Oitenta', 'Noventa');

Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',

'Quatrocentos', 'Quinhentos', 'Seiscentos',

'Setecentos', 'Oitocentos', 'Novecentos');

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;

begin

if Expressao

then Result:=CasoVerdadeiro

else Result:=CasoFalso;

end;

function MiniExtenso (trio: string): string;

var

Unidade, Dezena, Centena: string;

begin

Unidade:='';

Dezena:='';

Centena:='';

if (trio[2]='1') and (trio[3]<>'0') then

begin

Unidade:=Dez[strtoint(trio[3])];

Dezena:='';

end

else

begin

if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];

if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];

end;

if (trio[1]='1') and (Unidade='') and (Dezena='')

then Centena:='Cem'

else

if trio[1]<>'0'

then Centena:=Centenas[strtoint(trio[1])]

else Centena:='';

Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')

+ Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;

end;

begin

if (valor>1000000000.00) or (valor<0) then

begin

msg:='O valor está fora do intervalo permitido.';

msg:=msg+'O número deve ser maior ou igual a zero e menor que 1.000.000.000,00.';

msg:=msg+' Se não for corrigido o número não será escrito por extenso.';

showmessage(msg);

Result:='';

exit;

end;

if valor=0 then

begin

Result:='';

Exit;

end;
///                 123456789012
Texto:=formatfloat('000000000.00',valor);

Milhao:=MiniExtenso(Copy(Texto,1,3));

Milhar:=MiniExtenso(Copy(Texto,4,3));

Centena:=MiniExtenso(Copy(Texto,7,3));

Centavos:=MiniExtenso('0'+Copy(Texto,11,2));

Result:=Milhao;

if Milhao<>'' then begin
   if ((Milhar='') and (Centena='')) then begin
      if strtoint(copy(texto,1,3))>1 then Result:=Result+' Milhões de Reais'
      else Result:=Result+' Milhão de Reais'
      end
   else  begin
      if strtoint(copy(texto,1,3))>1 then Result:=Result+' Milhões'
      else Result:=Result+' Milhão';
   end
end;

if (milhar='') and (centena='') then result:=result+' de';

if result<>'' then begin
   if Milhar  <>'' then   Result:=Result+', '+Milhar+' Mil'
   end
else begin
   if Milhar  <>'' then   Result:= Milhar+' Mil';
end;

if result<>'' then begin
   if Centena <>'' then   Result:=Result+', '+Centena
   end
else begin
   if Centena <>'' then   Result:= Centena;
end;

if strtoint(copy(texto,1,9))>1 then Result:=Result+' Reais'
else Result:=Result+' Real';

if Centavos='' then Result:=Result+'.'
else begin
   if Milhao+Milhar+Centena='' then Result := Centavos
   else Result:=Result+' e '+Centavos;
   if (copy(texto,11,2)='01') and (Centavos<>'') then Result:=Result+' Centavo.'
   else Result:=Result+' Centavos.';
end;

end;

end.
