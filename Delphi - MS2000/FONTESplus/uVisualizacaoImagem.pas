unit uVisualizacaoImagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ExtDlgs;

type
  TfrmVisualizacaomagem = class(TForm)
    Panel1: TPanel;
    view: TImage;
    BitBtn1: TBitBtn;
    btnFechar: TBitBtn;
    Save: TSavePictureDialog;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    fPath: String;
    { Private declarations }
  public
    { Public declarations }
    property Path: String read fPath write fPath;
  end;

var
  frmVisualizacaomagem: TfrmVisualizacaomagem;

implementation

{$R *.DFM}

procedure TfrmVisualizacaomagem.FormShow(Sender: TObject);
begin
  try
    view.Picture.LoadFromFile(Path);
  EXCEPT
    Close;
  end;
end;

procedure TfrmVisualizacaomagem.BitBtn1Click(Sender: TObject);
begin
  if ( Save.Execute ) then begin
    view.Picture.SaveToFile( Save.FileName );
  end;
end;

end.
