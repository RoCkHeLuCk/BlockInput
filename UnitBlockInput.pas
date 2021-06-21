unit UnitBlockInput;

interface

uses
  Winapi.Windows, Winapi.Messages,
  Vcl.ImgList, Vcl.Controls, Vcl.Forms, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.FileCtrl, Vcl.Graphics,
  System.Classes, System.SysUtils, System.Win.Registry, System.IniFiles,
  VFrames, System.ImageList;

type

  TFrmBlockInput = class(TForm)
    TrIBlockInput: TTrayIcon;
    PpmBlockInput: TPopupMenu;
    MniFechar: TMenuItem;
    MniBloquearTudo: TMenuItem;
    N1: TMenuItem;
    MniConfig: TMenuItem;
    MniMostrarLog: TMenuItem;
    ImlIcones: TImageList;
    GpbSenha: TGroupBox;
    LblSenha: TLabel;
    BtnRevealAll: TSpeedButton;
    LblHp: TLabel;
    EdtSenha: TMaskEdit;
    GrpExecoes: TGroupBox;
    MmoExecoes: TMemo;
    PnlExecoes: TPanel;
    RgbPermitir: TRadioButton;
    RgbBloquear: TRadioButton;
    BtnLimpar: TButton;
    CkbMouseMove: TCheckBox;
    GrpWebCam: TGroupBox;
    PnlBlockInput: TPanel;
    GrpPreview: TGroupBox;
    Panel1: TPanel;
    LblDispositivo: TLabel;
    CmbDispositivo: TComboBox;
    SpbSettings: TSpeedButton;
    SpbSize: TSpeedButton;
    LblSalvar: TLabel;
    EdtSalvar: TEdit;
    BtnSalvar: TButton;
    ImgWebCam: TImage;
    TmrBlock: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MniFecharClick(Sender: TObject);
    procedure MniBloquearTudoClick(Sender: TObject);
    procedure BtnRevealAllMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnRevealAllMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MniMostrarLogClick(Sender: TObject);
    procedure MniConfigClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLimparClick(Sender: TObject);
    procedure MmoExecoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MmoExecoesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure CkbMouseMoveClick(Sender: TObject);
    procedure RgbPermitirClick(Sender: TObject);
    procedure SpbSettingsClick(Sender: TObject);
    procedure SpbSizeClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TmrBlockTimer(Sender: TObject);
  private
    { Private declarations }

    Block : Boolean;
    Log : String;
    KBHook : HHook;
    MSHook : HHook;
    BlockAltTab : Integer;
    WebCam : TVideoImage;
    function KeyVirtualToStr(KeyCode:Word):String;
    function MouseVirtualToStr(MouseCode:WPARAM):String;
    procedure BlockCtrlAltDel(fBlockIt:boolean);
    function ProcessKeyBordMouse(bMouse: Boolean; Code: Integer; wParam: WPARAM; lParam: LPARAM): NativeInt;
    procedure SavePicture();
  public
    { Public declarations }
    CurrentDir : String;
  end;

  function BlockInput(fBlockIt:boolean):Boolean; StdCall; External 'User32.dll';
  function KeyboardHookProc(Code: Integer; wParam : WPARAM; lParam : LPARAM): NativeInt; stdcall;
  function MouseHookProc(Code: Integer; wParam : WPARAM; lParam : LPARAM): NativeInt; stdcall;

var
  FrmBlockInput: TFrmBlockInput;

implementation

{$R *.dfm}

uses UnitLog;
// -----------------------------------------------------------------------------
function KeyboardHookProc(Code: Integer; wParam : WPARAM; lParam : LPARAM): NativeInt; stdcall;
begin
    if (Code = HC_ACTION) then
       Result := FrmBlockInput.ProcessKeyBordMouse(False, Code, wParam, lParam)
    else
       Result := CallNextHookEx(0, Code, wParam, lParam);
end;
// -----------------------------------------------------------------------------
function MouseHookProc(Code: Integer; wParam : WPARAM; lParam : LPARAM): NativeInt; stdcall;
begin
    if (Code = HC_ACTION) then
       Result := FrmBlockInput.ProcessKeyBordMouse(True, Code, wParam, lParam)
    else
       Result := CallNextHookEx(0, Code, wParam, lParam);
 end;
//----------------------------------------------------------------------------//
function TFrmBlockInput.KeyVirtualToStr(KeyCode:Word):String;
begin
     case KeyCode of
          $01 : Result:='"LBUTTON"';
          $02 : Result:='"RBUTTON"';
          $03 : Result:='"CANCEL"';
          $04 : Result:='"MBUTTON"';
          $05 : Result:='"BUTTON1"';
          $06 : Result:='"BUTTON2"';
          $07 : Result:='"BUTTON3"';
          $08 : Result:='"BACK"';
          $09 : Result:='"TAB"';
          //$0A..$0B : Result:='"UNDEF0A';
          $0C : Result:='"CLEAR"';
          $0D : Result:='"RETURN"';
          //$0E-0F : Result:='"UNDEF0E';
          $10 : Result:='"SHIFT"';
          $11 : Result:='"CONTROL"';
          $12 : Result:='"ALT"';
          $13 : Result:='"PAUSE"';
          $14 : Result:='"CAPITAL"';
          $15 : Result:='"KANA"';
          //$16 : Result:='"UNDEF16';
          $17 : Result:='"JUNJA"';
          $18 : Result:='"FINAL"';
          $19 : Result:='"HANJA"';
          //$1A : Result:='"UNDEF1A';
          $1B : Result:='"ESCAPE"';
          $1C : Result:='"CONVERT"';
          $1D : Result:='"NONCONVERT"';
          $1E : Result:='"ACCEPT"';
          $1F : Result:='"MODECHANGE"';
          $20 : Result:='"SPACE"';
          $21 : Result:='"PAGEUP"';
          $22 : Result:='"PAGEDOWN"';
          $23 : Result:='"END"';
          $24 : Result:='"HOME"';
          $25 : Result:='"LEFT"';
          $26 : Result:='"UP"';
          $27 : Result:='"RIGHT"';
          $28 : Result:='"DOWN"';
          $29 : Result:='"SELECT"';
          $2A : Result:='"PRINT"';
          $2B : Result:='"EXECUTE"';
          $2C : Result:='"PRTSCREEN"';
          $2D : Result:='"INSERT"';
          $2E : Result:='"DELETE"';
          $2F : Result:='"HELP"';
          $30..$39 : Result:=''+Char(KeyCode);
          //$3A-40 : Result:='UNDEF3A';
          $41..$5A : Result:=''+Char(KeyCode);
          $5B : Result:='"LWIN"';
          $5C : Result:='"RWIN"';
          $5D : Result:='"APPS"';
          //$5E : Result:='UNDEF5E';
          $5F : Result:='"SLEEP"';
          $60..$69 : Result:='"NUMPAD'+Char(KeyCode-$30)+'"';
          $6A : Result:='"NUMPAD_MULT"';
          $6B : Result:='"NUMPAD_ADD"';
          $6C : Result:='"NUMPAD_SEPAR"';
          $6D : Result:='"NUMPAD_SUB"';
          $6E : Result:='"NUMPAD_DEC"';
          $6F : Result:='"NUMPAD_DIV"';
          $70..$87 : Result:='"F'+IntToStr(KeyCode-$6F)+'"';
          //$88..$8F : Result:='UNDEF88';
          $90 : Result:='"NUMLOCK"';
          $91 : Result:='"SCROLL"';
          //$92..$96 : Result:='UNDEF92';
          //$97..$9F : Result:='UNDEF97';
          $A0 : Result:='"LSHIFT"';
          $A1 : Result:='"RSHIFT"';
          $A2 : Result:='"LCONTROL"';
          $A3 : Result:='"RCONTROL"';
          $A4 : Result:='"LALT"';
          $A5 : Result:='"RALT"';
          $A6 : Result:='"BROWSER_BACK"';
          $A7 : Result:='"BROWSER_FORWARD"';
          $A8 : Result:='"BROWSER_REFRESH"';
          $A9 : Result:='"BROWSER_STOP"';
          $AA : Result:='"BROWSER_SEARCH"';
          $AB : Result:='"BROWSER_FAVORITES"';
          $AC : Result:='"BROWSER_HOME"';
          $AD : Result:='"VOLUME_MUTE"';
          $AE : Result:='"VOLUME_DOWN"';
          $AF : Result:='"VOLUME_UP"';
          $B0 : Result:='"MEDIA_NEXT_TRACK"';
          $B1 : Result:='"MEDIA_PREV_TRACK"';
          $B2 : Result:='"MEDIA_STOP"';
          $B3 : Result:='"MEDIA_PLAY_PAUSE"';
          $B4 : Result:='"LAUNCH_MAIL"';
          $B5 : Result:='"LAUNCH_MEDIA_SELECT"';
          $B6 : Result:='"LAUNCH_APP1"';
          $B7 : Result:='"LAUNCH_APP2"';
          //$B8..$B9 : Result:='UNDEFB8';
          //$BA : Result:='OEM_1';
          $BB : Result:='"ADD"';
          $BC : Result:='"COMMA"';
          $BD : Result:='"MINUS"';
          $BE : Result:='"PERIOD"';
          //$BF : Result:='OEM_2';
          //$C0 : Result:='OEM_3';
          //$C1..$DA : Result:='UNDEFD8';
          //$DB : Result:='OEM_4';
          //$DC : Result:='OEM_5';
          //$DD : Result:='OEM_6';
          //$DE : Result:='OEM_7';
          //$DF : Result:='OEM_8';
          //$E0..$E1 : Result:='UNDEFE0';
          //$E2 : Result:='OEM_102';
          //$E3..$E4 : Result:='UNDEFE3';
          $E5 : Result:='"PROCESSKEY"';
          //$E6 : Result:='UNDEFE6';
          $E7 : Result:='"PACKET"';
          //$E8 : Result:='UNDEFE8';
          //$E9..$F5 : Result:='UNDEFE9';
          $F6 : Result:='"ATTN"';
          $F7 : Result:='"CRSEL"';
          $F8 : Result:='"EXSEL"';
          $F9 : Result:='"EREOF"';
          $FA : Result:='"PLAY"';
          $FB : Result:='"ZOOM"';
          $FC : Result:='"NONAME"';
          $FD : Result:='"PA1"';
          $FE : Result:='"OEM_CLEAR"';
     else
         Result:='"CODE_'+IntToStr($+KeyCode)+'"';
     end;
end;
// -----------------------------------------------------------------------------
function TFrmBlockInput.MouseVirtualToStr(MouseCode:WPARAM):String;
begin
    case MouseCode of
       WM_MOUSEMOVE : Result := '"MouseMove"';
     WM_LBUTTONDOWN,
     WM_LBUTTONUP   : Result := '"MouseLButton"';
     WM_RBUTTONDOWN,
     WM_RBUTTONUP   : Result := '"MouseRButton"';
     WM_MBUTTONDOWN,
     WM_MBUTTONUP   : Result := '"MouseMButton"';
     WM_XBUTTONDOWN,
     WM_XBUTTONUP   : Result := '"MouseXButton"';
      WM_MOUSEWHEEL : Result := '"MouseWheel"';
     WM_MOUSEHWHEEL : Result := '"MouseHWheel"';
    else
       Result := '';
    end;
end;
// -----------------------------------------------------------------------------
function TFrmBlockInput.ProcessKeyBordMouse(bMouse: Boolean; Code: Integer; wParam: WPARAM; lParam: LPARAM): NativeInt;
var
    Key : PKeybdInput;
    //Mouse : PMouseHookStruct;
    T : String;
    C : integer;
begin

    T := '';
    if not bMouse then
    begin
        if wParam = WM_KEYDOWN then
        begin
            Key := PKeybdInput(lParam);
            T := KeyVirtualToStr( Key.wVk );
        end;
    end else
        T := MouseVirtualToStr(wParam);

    //bloquear ou nao.
    if (Block) and (T <> '') then
    begin
        C := Pos(T+#13+#10,MmoExecoes.Lines.Text);
        if ((RgbPermitir.Checked) and (C > 0))
        or ((RgbBloquear.Checked) and (C = 0)) then
           Result := CallNextHookEx(0, Code, wParam, lParam)
        else begin
           Result := -1;
           SavePicture;
        end;

        if not ((bMouse) and (wParam = WM_MOUSEMOVE)) then
           Log := Log + T;

        C := Pos(EdtSenha.Text, Log);
        if C > 0 then
        begin
            Delete(Log,C,Length(EdtSenha.Text));
            Log := Log +#13+#10+'Fim: '+FormatDateTime('[hh:nn:ss dd/mm/yyyy]',Now);
            FrmLog.MmoTexto.Lines.Text := Log;
            FrmLog.MmoTexto.Lines.SaveToFile( EdtSalvar.Text +'\Texto '+ FormatDateTime('yyyy-mm-dd hh-nn-ss',now())+'.txt' );
            BlockCtrlAltDel(False);
            TrIBlockInput.IconIndex := 0;
            Result := -1;
            WebCam.VideoStop;
            Block := False;
            if KBHook > 0 then
               UnHookWindowsHookEx(KBHook);
            if MSHook > 0 then
               UnHookWindowsHookEx(MSHook);
        end;

    end else
        Result := CallNextHookEx(0, Code, wParam, lParam);
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.SavePicture;
var
    Bitmap : TBitmap;
    FileName : String;
begin
    FileName := EdtSalvar.Text +'\Foto '+ FormatDateTime('yyyy-mm-dd hh-nn-ss',now())+'.bmp';

    if not FileExists( FileName ) and (CmbDispositivo.Items.Count > 0) then
    begin
        Bitmap := TBitmap.Create;
        WebCam.GetBitmap( Bitmap );
        Bitmap.SaveToFile( FileName );
        FrmLog.LtbFoto.Items.Add( FileName );
        Bitmap.Free;
    end;
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.RgbPermitirClick(Sender: TObject);
begin
    if Visible then
       MmoExecoes.SetFocus;
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.SpbSettingsClick(Sender: TObject);
begin
    WebCam.ShowProperty;
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.SpbSizeClick(Sender: TObject);
begin
    WebCam.ShowProperty_Stream;
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.TmrBlockTimer(Sender: TObject);
begin
    TmrBlock.Enabled := False;
    TrIBlockInput.IconIndex := 2;
    Log := #13+#10+'Inicio: '+FormatDateTime('[hh:nn:ss dd/mm/yyyy]',Now)+#13+#10;

    BlockCtrlAltDel(True);
    Block := True;

    if KBHook > 0 then
       UnHookWindowsHookEx(KBHook);
    if MSHook > 0 then
       UnHookWindowsHookEx(MSHook);

    KBHook := SetWindowsHookEx(WH_KEYBOARD_LL, KeyboardHookProc, HInstance, 0);
    MSHook := SetWindowsHookEx(WH_MOUSE_LL, MouseHookProc, HInstance, 0);
end;
// -----------------------------------------------------------------------------
procedure TFrmBlockInput.BlockCtrlAltDel(fBlockIt:boolean);
const
    sRegPolicies = '\Software\Microsoft\Windows\CurrentVersion\Policies';
var
    Registry : TRegistry;
begin
    Registry := TRegistry.Create;

    Registry.RootKey := HKEY_CURRENT_USER;
    if Registry.OpenKey( sRegPolicies + '\System\', True) then
    begin
        if fBlockIt then
        begin
            Registry.WriteInteger('DisableTaskMgr', 1);
            Registry.WriteInteger('DisableChangePassword', 1);
            Registry.WriteInteger('DisableLockWorkstation', 1);
            Registry.WriteInteger('HideFastUserSwitching', 1);
            Registry.WriteInteger('DisableStatusMessages', 1);
            RegisterHotKey(Handle, BlockAltTab, MOD_ALT, VK_TAB);
        end else begin
            Registry.WriteInteger('DisableTaskMgr', 0);
            Registry.WriteInteger('DisableChangePassword', 0);
            Registry.WriteInteger('DisableLockWorkstation', 0);
            Registry.WriteInteger('HideFastUserSwitching', 0);
            Registry.WriteInteger('DisableStatusMessages', 0);
            UnRegisterHotKey(Handle, BlockAltTab);
        end;
        Registry.CloseKey;
    end;

    if Registry.OpenKey( sRegPolicies + '\Explorer\', True) then
    begin
        if fBlockIt then
        begin
            Registry.WriteInteger('NoChangeStartMenu', 1);
            Registry.WriteInteger('NoClose', 1);
            Registry.WriteInteger('NoLogOff', 1);
            Registry.WriteInteger('NoDriveTypeAutoRun', $FF);
        end else begin
            Registry.WriteInteger('NoChangeStartMenu', 0);
            Registry.WriteInteger('NoClose', 0);
            Registry.WriteInteger('NoLogOff', 0);
            Registry.DeleteValue('NoDriveTypeAutoRun');
        end;
        Registry.CloseKey;
    end;

    Registry.Free;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MmoExecoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    T : String;
begin
    T := KeyVirtualToStr(Key);
    if Pos(T+#13+#10,MmoExecoes.Lines.Text) = 0 then
       MmoExecoes.Lines.Add( T );
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MmoExecoesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    T : String;
begin
    case Button of
       mbLeft: T := '"MouseLButton"';
      mbRight: T := '"MouseRButton"';
     mbMiddle: T := '"MouseMButton"';
    end;

    if Pos(T+#13+#10,MmoExecoes.Lines.Text) = 0 then
       MmoExecoes.Lines.Add( T );
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MniBloquearTudoClick(Sender: TObject);
begin
    TmrBlock.Enabled := true;
    TrIBlockInput.IconIndex := 1;
    Application.ProcessMessages;
    WebCam.VideoStop;
    if CmbDispositivo.Items.Count > 0 then
       WebCam.VideoStart('#'+IntToStr(CmbDispositivo.ItemIndex+1) );
    Application.ProcessMessages;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MniFecharClick(Sender: TObject);
begin
    Application.Terminate;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MniMostrarLogClick(Sender: TObject);
begin
    FrmLog.Show;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.MniConfigClick(Sender: TObject);
begin
    Show;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.BtnRevealAllMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    EdtSenha.PasswordChar := #0;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.BtnRevealAllMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    EdtSenha.PasswordChar := '*';
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.BtnSalvarClick(Sender: TObject);
var
    Path:string;
begin
    Path := ExtractFilePath( EdtSalvar.Text );
    if SelectDirectory( Path, [sdAllowCreate, sdPerformCreate, sdPrompt], 1000) then
       EdtSalvar.Text := Path;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.CkbMouseMoveClick(Sender: TObject);
var
    C : integer;
    T : String;
begin
    C := Pos('"MouseMove"'+#13+#10,MmoExecoes.Lines.Text);

    if (CkbMouseMove.Checked) then
    begin
        if C = 0 then
           MmoExecoes.Lines.Add( '"MouseMove"' );
    end else begin
        if C > 0 then
        begin
           T := MmoExecoes.Lines.Text;
           Delete( T, C, 13 );
           MmoExecoes.Lines.Text := T;
        end;
    end;
    if Visible then
       MmoExecoes.SetFocus;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
    Key := UpperCase(Key)[1];
    if not CharInSet(Key,['A'..'Z']) then
       Key := #0;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.BtnLimparClick(Sender: TObject);
begin
    MmoExecoes.Clear;
    if Visible then
       MmoExecoes.SetFocus;
    CkbMouseMove.Checked := False;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.FormClose(Sender: TObject; var Action: TCloseAction);
var
    Ini : TIniFile;
begin
    Ini := TIniFile.Create(CurrentDir+'\Config.ini');
    Ini.WriteBool('BlockInput','Bloquear',RgbBloquear.Checked);
    Ini.WriteBool('BlockInput','Mouse',CkbMouseMove.Checked);
    Ini.WriteString('BlockInput','Senha',EdtSenha.Text);
    Ini.WriteString('BlockInput','Salvar',EdtSalvar.Text);
    if CmbDispositivo.Items.Count > 0 then
       ini.WriteInteger('BlockInput','WebCam',CmbDispositivo.ItemIndex);

    Ini.Free;
    MmoExecoes.Lines.SaveToFile(CurrentDir+'execoes.txt');
    Action := caNone;
    Hide;
    WebCam.SetDisplayCanvas( nil );
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.FormCreate(Sender: TObject);
var
    Ini : TIniFile;
    Ls  : TStringList;
begin
    CurrentDir := ExtractFilePath(paramstr(0));

    if FileExists(CurrentDir+'\Config.ini') then
       Application.ShowMainForm := False;

    BlockCtrlAltDel(False);

    WebCam := TVideoImage.Create;
    Ls := TStringList.Create;
    WebCam.GetListOfDevices(Ls);
    Ls.Insert(0,'None');
    CmbDispositivo.Items.Assign(Ls);
    Ls.Free;

    Ini := TIniFile.Create(CurrentDir+'\Config.ini');
    RgbBloquear.Checked := Ini.ReadBool('BlockInput','Bloquear',RgbBloquear.Checked);
    CkbMouseMove.Checked := Ini.ReadBool('BlockInput','Mouse',CkbMouseMove.Checked);
    EdtSenha.Text := Ini.ReadString('BlockInput','Senha',EdtSenha.Text);
    EdtSalvar.Text := Ini.ReadString('BlockInput','Salvar',EdtSalvar.Text);
    if CmbDispositivo.Items.Count > 0 then
       CmbDispositivo.ItemIndex := ini.ReadInteger('BlockInput','WebCam',0);
    Ini.Free;

    if FileExists(CurrentDir+'execoes.txt') then
       MmoExecoes.Lines.LoadFromFile(CurrentDir+'execoes.txt');

    BlockAltTab := GlobalAddAtom('BlockAltTab');

    Block := False;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.FormDestroy(Sender: TObject);
begin
    if KBHook > 0 then
       UnHookWindowsHookEx(KBHook);
    if MSHook > 0 then
       UnHookWindowsHookEx(MSHook);
    BlockCtrlAltDel(False);
    WebCam.Free;
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if (MmoExecoes.Focused) and (Pos('"MouseWheel"'+#13+#10,MmoExecoes.Lines.Text) = 0) then
       MmoExecoes.Lines.Add( '"MouseWheel"' );
end;
//----------------------------------------------------------------------------//
procedure TFrmBlockInput.FormShow(Sender: TObject);
begin
    WebCam.VideoStop;
    Application.ProcessMessages;
    if (CmbDispositivo.Items.Count > 1)
    and(CmbDispositivo.ItemIndex > 0) then
       WebCam.VideoStart('#'+IntToStr(CmbDispositivo.ItemIndex) );
    Application.ProcessMessages;
    WebCam.SetDisplayCanvas( ImgWebCam.Canvas );
    Application.ProcessMessages;
end;
//----------------------------------------------------------------------------//


end.
