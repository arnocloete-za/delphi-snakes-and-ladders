unit frmTaakHomeScreen_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TForm2 = class(TForm)
    edtName2: TPanel;
    lblPlayer1: TLabel;
    lblPlayer2: TLabel;
    lblPlayer3: TLabel;
    edtName1: TEdit;
    Edit2: TEdit;
    edtName3: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    edtAmountPlayers: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    btnChooseColour2: TButton;
    btnChooseColour1: TButton;
    btnChooseColour3: TButton;
    lblPlayer4: TLabel;
    edtName4: TEdit;
    btnChooseColour4: TButton;
    lblChooseColour: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtAmountPlayersChange(Sender: TObject);
    procedure edtName1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm2.edtAmountPlayersChange(Sender: TObject);
Var
sPlayerAnount1 : string;
iPlayerAmount : Integer;
begin
  iPlayerAmount := StrToInt(edtAmountPlayers.Text);
  if iPlayerAmount = 1 then
  edtName1.Visible := True;
  lblPlayer1.Visible := True;
  lblChooseColour.Visible := True;
  btnChooseColour1.Visible := True;
begin
 if iPlayerAmount = 2 then
  edtName2.Visible := True;
  lblPlayer2.Visible := True;
  lblChooseColour.Visible := True;
  btnChooseColour2.Visible := True;
  end;
begin
 if iPlayerAmount = 3 then
  edtName3.Visible := True;
  lblPlayer3.Visible := True;
  lblChooseColour.Visible := True;
  btnChooseColour3.Visible := True;
  end;
begin
 if iPlayerAmount = 4 then
 edtName3.Visible := True;
 lblPlayer4.Visible := True;
 lblChooseColour.Visible := True;
 btnChooseColour4.Visible := True;
 end;
 begin
 if not (iPlayerAmount >=4)
 then
  ShowMessage('You can not select more than 4 players');
  edtAmountPlayers.Clear;
  edtAmountPlayers.SetFocus;
 end;
 begin
 if not (iPlayerAmount<=1)
 then
 ShowMessage('You must select at least 1 player');
 edtAmountPlayers.Clear;
 edtAmountPlayers.SetFocus;
 end;
 end;

procedure TForm2.edtName1Change(Sender: TObject);
Var
sPlayername1 : string;
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
Var
sPlayername1,sPlayername2,sPlayername3,sPlayername4 : string;
iPlayerAmount,iStart : Integer;
begin
  sPlayername2 :=edtName2.Caption;
  sPlayername1 :=edtName1.Text;
  sPlayername3 :=edtName3.Text;
  sPlayername4 := edtName4.Text;
  iPlayerAmount := StrToInt(edtAmountPlayers.Text);
  edtName1.Visible := False;
  edtName2.Visible := False;
  edtName3.Visible := False;
  edtName4.Visible := False;
  lblPlayer1.Visible := False;
  lblPlayer2.Visible := False;
  lblPlayer3.Visible := False;
  lblPlayer4.Visible := False;
  lblChooseColour.Visible := False;
  btnChooseColour1.Visible := False;
  btnChooseColour2.Visible := False;
  btnChooseColour3.Visible := False;
  btnChooseColour4.Visible := False;


end;

end.

