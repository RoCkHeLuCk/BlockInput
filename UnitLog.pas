unit UnitLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Winapi.ShellApi;

type
  TFrmLog = class(TForm)
    GrpLogTexto: TGroupBox;
    MmoTexto: TMemo;
    GrpLogFoto: TGroupBox;
    LtbFoto: TListBox;
    Splitter1: TSplitter;
    Button1: TButton;
    procedure LtbFotoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLog: TFrmLog;

implementation

{$R *.dfm}

uses UnitBlockInput;

procedure TFrmLog.Button1Click(Sender: TObject);
begin
    ShellExecute(Application.Handle, 'explore'
                 ,PWideChar(FrmBlockInput.EdtSalvar.Text )
                 ,nil, nil,SW_SHOWNORMAL);
end;

procedure TFrmLog.LtbFotoClick(Sender: TObject);
begin
    if ltbFoto.Items.Count > 0 then
    begin
        ShellExecute(Application.Handle, 'open', PWideChar( ltbFoto.Items[ltbFoto.ItemIndex] )
                     , nil, nil,SW_SHOWNORMAL);
    end;
end;

end.
