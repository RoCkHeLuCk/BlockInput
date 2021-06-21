program BlockInput;

uses
  Vcl.Forms,
  windows,
  UnitBlockInput in 'UnitBlockInput.pas' {FrmBlockInput},
  UnitLog in 'UnitLog.pas' {FrmLog},
  VFrames in 'LIB\VFrames.pas',
  VSample in 'LIB\VSample.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TFrmBlockInput, FrmBlockInput);
  Application.CreateForm(TFrmLog, FrmLog);
  FrmBlockInput.Hide;
  Application.Run;
end.
