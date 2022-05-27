


unit snakesandladder_design;



interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Unit1;

type
  TForm2 = class(TForm)
    btnstart: TButton;
    BitBtn1: TBitBtn;
    lblPlayer1Name: TLabel;
    lblPlayer2Name: TLabel;
    lblPlayer3Name: TLabel;
    edtName1: TEdit;
    edtName2: TEdit;
    edtName3: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    lblPlayer4Name: TLabel;
    edtName4: TEdit;
    AmountPlayers: TEdit;
    shpBlue: TShape;
    shpRed: TShape;
    shpPurple: TShape;
    shpGreen: TShape;
    lblColour: TLabel;
    procedure btnstartClick(Sender: TObject);
    //procedure edtAmountPlayersChange(Sender: TObject);
    procedure edtName1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AmountPlayersChange(Sender: TObject);
    procedure edtName2Change(Sender: TObject);
    procedure edtName3Change(Sender: TObject);
    procedure edtName4Change(Sender: TObject);
  private
    { Private declarations }
  public
    global_player_amount: Integer;
    global_player1_name : string;
    global_player2_name : string;
    global_player3_name : string;
    global_player4_name : string;


    //player1_position: Integer;
    { Public declarations }
  end;

var
  Form2: TForm2;



implementation

{$R *.dfm}

procedure TForm2.AmountPlayersChange(Sender: TObject);
Var
sPlayerAnount1 : string;
iPlayerAmount : Integer;
begin
  iPlayerAmount := StrToInt(AmountPlayers.Text);
  if iPlayerAmount = 2 then
  begin
    edtName1.Visible := True;
    lblPlayer1Name.Visible := True;
    shpBlue.Visible := True;
    edtName2.Visible := True;
    lblPlayer2Name.Visible := True;
    shpRed.Visible := True;

      edtName3.Visible := False;
  lblPlayer3Name.Visible := False;
  shpGreen.Visible := False;

    edtName4.Visible := False;
  lblPlayer4Name.Visible := False;
  shpPurple.Visible := False;
  lblColour.Visible := True;
  end
  else if iPlayerAmount = 3 then
  begin
    edtName1.Visible := True;
    lblPlayer1Name.Visible := True;
    shpBlue.Visible := True;
    edtName2.Visible := True;
    lblPlayer2Name.Visible := True;
    shpRed.Visible := True;
    edtName3.Visible := True;
    lblPlayer3Name.Visible := True;
    shpPurple.Visible := True;
     lblColour.Visible := True;
      edtName4.Visible := False;
  lblPlayer4Name.Visible := False;
  shpGreen.Visible := False;
  end
  else if iPlayerAmount = 4 then
  begin
    edtName1.Visible := True;
    lblPlayer1Name.Visible := True;
    shpBlue.Visible := True;
    edtName2.Visible := True;
    lblPlayer2Name.Visible := True;
    shpRed.Visible := True;
    edtName3.Visible := True;
    lblPlayer3Name.Visible := True;
    shpPurple.Visible := True;
    edtName4.Visible := True;
    lblPlayer4Name.Visible := True;
    shpGreen.Visible := True;
    lblColour.Visible := True;
  end;

 if (iPlayerAmount >4)
 then
 begin
  ShowMessage('You can not select more than 4 players');
//  AmountPlayers.Clear;
//  AmountPlayers.SetFocus;


 end;

 if (iPlayerAmount<=1)
 then
 begin
   ShowMessage('You must select at least 2 players');
   //AmountPlayers.Clear;
   //AmountPlayers.SetFocus;
 end;

 global_player_amount:= iPlayerAmount

 end;

procedure TForm2.btnstartClick(Sender: TObject);
begin
  if (global_player_amount < 2) OR (global_player_amount > 4) then
  ShowMessage('Please choose amount of players')
  else
  begin
    if (global_player_amount = 2) AND ((global_player1_name = '') OR (global_player2_name  = '')) then
          ShowMessage('Please enter Player 1 and Player 2 names')
      else if (global_player_amount = 3) AND ((global_player1_name = '') OR (global_player2_name  = '') OR (global_player3_name  = '')) then
          ShowMessage('Please enter Player 1 and Player 2 and Player 3 names')
      else if (global_player_amount = 4) AND ((global_player1_name = '') OR (global_player2_name  = '') OR (global_player3_name  = '')  OR (global_player4_name  = '')) then
          ShowMessage('Please enter all the player names')
      else
        Form1.Show;
  end;
end;


procedure TForm2.edtName1Change(Sender: TObject);
Var
sPlayername1 : string;
begin
  sPlayername1 :=edtName1.Text;
  global_player1_name := sPlayername1;
end;

procedure TForm2.edtName2Change(Sender: TObject);
Var
sPlayername2 : string;
begin
  sPlayername2 := edtName2.Text;
  global_player2_name := sPlayername2;
end;

procedure TForm2.edtName3Change(Sender: TObject);
 Var
sPlayername3 : string;
begin
 sPlayername3 := edtName3.Text;
 global_player3_name := sPlayername3;
end;

procedure TForm2.edtName4Change(Sender: TObject);
Var
sPlayername4 : string;
begin
 sPlayername4 := edtName4.Text;
 global_player4_name := sPlayername4;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  global_player_amount:=0;

  edtName1.Visible := False;
  lblPlayer1Name.Visible := False;
  shpBlue.Visible := False;

  edtName2.Visible := False;
  lblPlayer2Name.Visible := False;
  shpRed.Visible := False;

  edtName3.Visible := False;
  lblPlayer3Name.Visible := False;
  shpPurple.Visible := False;

  edtName4.Visible := False;
  lblPlayer4Name.Visible := False;
 shpGreen.Visible := False;
 lblColour.Visible := False;
end;

end.
