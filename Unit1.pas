unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Jpeg, PngImage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    Panel1: TPanel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImgDice1: TImage;
    ImgDice2: TImage;
    ImgDice3: TImage;
    ImgDice4: TImage;
    ImgDice5: TImage;
    ImgDice6: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure init;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  player1_position,player2_position,player3_position,player4_position: Integer;
  who_turn : integer;
  first_time : Boolean;
  amount_p: Integer;

implementation

{$R *.dfm}

uses snakesandladder_design;

procedure TForm1.Button1Click(Sender: TObject);
//var
//  bmp1, bmp2: TBitmap;
//begin
//
//
//  bmp2 := TBitmap.Create;
//  bmp2.LoadFromFile('red');
//
////  bmp2.PixelFormat := pf24bit;  // with 32 bit images I need this, don't know why
//  bmp2.Transparent := True;
//  bmp2.TransparentColor := clWhite;
//  image1.Canvas.Draw(0, 0, bmp2);  // draw bmp2 over bmp1
//
//  // this is how the merged image looks like
// //Canvas.Draw(0, 0, bmp1);


var
  index_x,index_y:integer;
  Strm: TResourceStream;
  Jpg: TJPEGImage;
  i:integer;
  temp_p1:integer;
  offset_player2,offset_player3,offset_player4:integer;
  Png: TPngImage;


begin
  //show roll amount
  i:=0;
  if first_time then
  begin
    i:=0;
    amount_p:= Form2.global_player_amount;
   // ShowMessage(IntToStr(Form2.global_player_amount));
  end
   else i:= 1 + Random(6);

  if i = 1 then
  begin
    ImgDice1.Visible := True;
    ImgDice2.Visible := False;
    ImgDice3.Visible := False;
    ImgDice4.Visible := False;
    ImgDice5.Visible := False;
    ImgDice6.Visible := False;
  end;
  if i = 2 then
  begin
    ImgDice1.Visible := False;
    ImgDice2.Visible := True;
    ImgDice3.Visible := False;
    ImgDice4.Visible := False;
    ImgDice5.Visible := False;
    ImgDice6.Visible := False;
  end;
  if i = 3 then
  begin
    ImgDice1.Visible := False;
    ImgDice2.Visible := False;
    ImgDice3.Visible := True;
    ImgDice4.Visible := False;
    ImgDice5.Visible := False;
    ImgDice6.Visible := False;
  end;
  if i = 4 then
  begin
    ImgDice1.Visible := False;
    ImgDice2.Visible := False;
    ImgDice3.Visible := False;
    ImgDice4.Visible := True;
    ImgDice5.Visible := False;
    ImgDice6.Visible := False;
  end;
  if i = 5 then
  begin
    ImgDice1.Visible := False;
    ImgDice2.Visible := False;
    ImgDice3.Visible := False;
    ImgDice4.Visible := False;
    ImgDice5.Visible := True;
    ImgDice6.Visible := False;
  end;
  if i = 6 then
  begin
    ImgDice1.Visible := False;
    ImgDice2.Visible := False;
    ImgDice3.Visible := False;
    ImgDice4.Visible := False;
    ImgDice5.Visible := False;
    ImgDice6.Visible := True;
  end;

  offset_player2:= 0;
  offset_player3:= 0;
  offset_player4:= 0;

  if not first_time then
  begin
    if who_turn = 1 then
    begin

      player1_position:= player1_position + i ;
      Image2.Visible := False;
      Image3.Visible := True;
      Image4.Visible := False;
      Image5.Visible := False;
      //ShowMessage(IntToStr(player1_position));
      //showmessage('Player 1 turn: You rolled a ' + IntToStr(i));
    end
    else if who_turn = 2 then
    begin
      //showmessage('Player 2 turn: You rolled a' + IntToStr(i));

      player2_position:= player2_position + i ;
      if amount_p >= 3 then
      begin
         Image3.Visible :=False;
         Image2.Visible := False;
         Image4.Visible := True;
         Image5.Visible := False;
      end
      else
      begin
         Image3.Visible :=False;
         Image2.Visible := True;
         Image4.Visible := False;
         Image5.Visible := False;
      end;
    end
    else if who_turn = 3 then
    begin
      //showmessage('Player 3 turn: You rolled a ');
    player3_position:= player3_position + i ;
      if amount_p = 4 then
      begin
        Image4.Visible := False;
        Image2.Visible := False;
        Image3.Visible := False;
        Image5.Visible := True;
      end
      else
      begin
         Image3.Visible :=False;
         Image2.Visible := True;
         Image4.Visible := False;
         Image5.Visible := False;
      end;
    end
    else if who_turn = 4 then
    begin
      //showmessage('Player 4 turn: You rolled a ');

      player4_position:= player4_position + i ;
       Image5.Visible := False;
    Image3.Visible := False;
    Image4.Visible := False;
    Image2.Visible := True;
    end;
  end;



  if first_time then
  begin
    showmessage('Let the games begin!');
    Button1.Caption:= 'Roll Dice';
    first_time:= False;
  end
  else who_turn:= who_turn + 1;

  //ShowMessage('amount of player');
//  ShowMessage(IntToStr(amount_p));
  if (amount_p = 2) then
  begin
    if who_turn = 3 then
    begin
      who_turn:= 1;
      //('RESET');
    end;
  end;
  if (amount_p = 3) then
  begin
    if who_turn = 4 then
      who_turn:= 1;
  end;
  if (amount_p = 4) then
  begin
    if who_turn = 5 then
      who_turn:= 1;
  end;


 // ShowMessage(IntToStr(who_turn));
//  if who_turn = 5 then
//    who_turn:= 1;

  //reset board

   with Image1.Canvas do begin

      Brush.Color:=clwhite;
      Brush.Style:=bssolid;
      Pen.Color:=clBlack;
      Pen.Width:=5;
      Rectangle(1,1,800,800);

      for i := 1 to 8 do
        begin
          moveto(100*i,0);
          Lineto(100*i,800);
          moveto(0,100*i);
          Lineto(800,100*i);
        end;
    end;

  //add snakes and ladders back
  //add snake1 back
  Strm := TResourceStream.Create(HInstance, 'snake2', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(320, 350, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
  //add snake2 back
    Strm := TResourceStream.Create(HInstance, 'snake3', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(520, 50, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
    //add snake3 back
    Strm := TResourceStream.Create(HInstance, 'snake4', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(20, 450, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
    //add ladder1 back
    Strm := TResourceStream.Create(HInstance, 'ladder1', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(420, 570, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
    //add ladder2 back
    Strm := TResourceStream.Create(HInstance, 'ladder2', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(20, 270, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
    //add ladder3 back
    Strm := TResourceStream.Create(HInstance, 'ladder3', RT_RCDATA);
    try

    Png := TPngImage.Create;
  try
      Png.LoadFromStream(Strm);
      image1.Canvas.Draw(120, 170, Png);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;


  //player 1 begin

  index_x:=1;
  index_y:=1;

  //Snake 1
  if (player1_position = 35)
  then
    player1_position:= player1_position - 15;
  if (player2_position = 35)
  then
    player2_position:= player2_position - 15;
  if (player3_position = 35)
  then
    player3_position:= player3_position - 15;
  if (player4_position = 35)
  then
    player4_position:= player4_position - 15;

  //Snake 2
  if (player1_position = 58)
  then
    player1_position:= player1_position - 17;
  if (player2_position = 58)
  then
    player2_position:= player2_position - 17;
  if (player3_position = 58)
  then
    player3_position:= player3_position - 17;
  if (player4_position = 58)
  then
    player4_position:= player4_position - 17;

  //Snake 3
  if (player1_position = 31)
  then
    player1_position:= player1_position - 17;
  if (player2_position = 31)
  then
    player2_position:= player2_position - 17;
  if (player3_position = 31)
  then
    player3_position:= player3_position - 17;
  if (player4_position = 31)
  then
    player4_position:= player4_position - 17;

//Ladder 1
  if (player1_position = 5)
  then
    player1_position:= player1_position + 8;
  if (player2_position = 5)
  then
    player2_position:= player2_position + 8;
  if (player3_position = 5)
  then
    player3_position:= player3_position + 8;
  if (player4_position = 5)
  then
    player4_position:= player4_position + 8;
//Ladder 2
  if (player1_position = 30)
  then
    player1_position:= player1_position + 17;
  if (player2_position = 30)
  then
    player2_position:= player2_position + 17;
  if (player3_position = 30)
  then
    player3_position:= player3_position + 17;
  if (player4_position = 30)
  then
    player4_position:= player4_position + 17;
//Ladder 3
  if (player1_position = 34)
  then
    player1_position:= player1_position + 15;
  if (player2_position = 34)
  then
    player2_position:= player2_position + 15;
  if (player3_position = 34)
  then
    player3_position:= player3_position + 15;
  if (player4_position = 34)
  then
    player4_position:= player4_position + 15;

  if (player1_position >= 63) then
  begin
    showmessage('Player ' + Form2.global_player1_name + ' Won!!!!');
  end;
  if (player2_position >= 63) then
  begin
    showmessage('Player ' + Form2.global_player2_name + ' Won!!!!');
  end;
    if (player3_position >= 63) then
  begin
    showmessage('Player ' + Form2.global_player3_name + ' Won!!!!');
  end;
    if (player4_position >= 63) then
  begin
    showmessage('Player ' + Form2.global_player4_name + ' Won!!!!');
  end;
  if ((player1_position >= 63) OR (player2_position >= 63) OR (player3_position >= 63) OR (player4_position >= 63)) then
  begin
    player1_position:=0;
    player2_position:=0;
    player3_position:=0;
    player4_position:=0;
  end;

  //upate roll of dice and check win conditions
    if player1_position <= 7 then
  begin
    index_x:= player1_position * 100 ;
  end
  else if (player1_position > 7) AND (player1_position <= 15) then
  begin
    temp_p1:= player1_position-7;
    index_x:= (8-temp_p1) * 100 ;
    index_y:= 1 * 100 ;
    end
    else if (player1_position > 15) AND (player1_position <= 23) then
    begin
    temp_p1:= player1_position-16;
    index_x:= (temp_p1) * 100 ;
    index_y:= 2 * 100 ;
    end
  else if (player1_position > 23) AND (player1_position <= 31) then
    begin
    temp_p1:= player1_position-24;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 3 * 100 ;
    end
  else if (player1_position > 31) AND (player1_position <= 39) then
    begin
    temp_p1:= player1_position-32;
    index_x:= (temp_p1) * 100 ;
    index_y:= 4 * 100 ;
    end
  else if (player1_position >39) AND (player1_position <= 47) then
    begin
    temp_p1:= player1_position-40;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 5 * 100 ;
    end
  else if (player1_position >47) AND (player1_position <= 55) then
    begin
    temp_p1:= player1_position-48;
    index_x:= (temp_p1) * 100 ;
    index_y:= 6 * 100 ;
    end
  else if (player1_position > 55) AND (player1_position <= 63) then
    begin
    temp_p1:= player1_position-56;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 7 * 100 ;
    end ;



  //add all pieces back
  if (player1_position = player2_position) OR (player1_position = player3_position) OR (player1_position = player4_position) then
  begin
    Strm := TResourceStream.Create(HInstance, 'bluemini', RT_RCDATA);
  end
  else
    Strm := TResourceStream.Create(HInstance, 'blue', RT_RCDATA);
  try
    Jpg := TJPEGImage.Create;
  try
      Jpg.LoadFromStream(Strm);
      image1.Canvas.Draw(10+index_x, 710-index_y, Jpg);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;
  //player 1 end

  //player 2 begin

  index_x:=1;
  index_y:=1;
  //upate roll of dice and check win conditions
      if player2_position <= 7 then
  begin
    index_x:= player2_position * 100 ;
  end
  else if (player2_position > 7) AND (player2_position <= 15) then
  begin
    temp_p1:= player2_position-7;
    index_x:= (8-temp_p1) * 100 ;
    index_y:= 1 * 100 ;
    end
    else if (player2_position > 15) AND (player2_position <= 23) then
    begin
    temp_p1:= player2_position-16;
    index_x:= (temp_p1) * 100 ;
    index_y:= 2 * 100 ;
    end
  else if (player2_position > 23) AND (player2_position <= 31) then
    begin
    temp_p1:= player2_position-24;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 3 * 100 ;
    end
  else if (player2_position > 31) AND (player2_position <= 39) then
    begin
    temp_p1:= player2_position-32;
    index_x:= (temp_p1) * 100 ;
    index_y:= 4 * 100 ;
    end
  else if (player2_position >39) AND (player2_position <= 47) then
    begin
    temp_p1:= player2_position-40;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 5 * 100 ;
    end
  else if (player2_position >47) AND (player2_position <= 55) then
    begin
    temp_p1:= player2_position-48;
    index_x:= (temp_p1) * 100 ;
    index_y:= 6 * 100 ;
    end
  else if (player2_position > 55) AND (player2_position <= 63) then
    begin
    temp_p1:= player2_position-56;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 7 * 100 ;
    end ;
  //add all pieces back
  if (player2_position = player1_position) OR (player2_position = player3_position) OR (player2_position = player4_position) then
  begin
    Strm := TResourceStream.Create(HInstance, 'redmini', RT_RCDATA);
    offset_player2:= 50;
  end
  else
    Strm := TResourceStream.Create(HInstance, 'red', RT_RCDATA);

  try
    Jpg := TJPEGImage.Create;
  try
      Jpg.LoadFromStream(Strm);
      image1.Canvas.Draw(10+index_x + offset_player2, 710-index_y, Jpg);
//      Image1.Picture.Assign(Jpg);
    finally
      Jpg.Free;
    end;
  finally
    Strm.Free;
  end;

  //Player 2 end

  //player 3 begin
  if (amount_p >= 3) then
  begin

  index_x:=1;
  index_y:=1;
  //upate roll of dice and check win conditions
     if player3_position <= 7 then
  begin
    index_x:= player3_position * 100 ;
  end
  else if (player3_position > 7) AND (player3_position <= 15) then
  begin
    temp_p1:= player3_position-7;
    index_x:= (8-temp_p1) * 100 ;
    index_y:= 1 * 100 ;
    end
    else if (player3_position > 15) AND (player3_position <= 23) then
    begin
    temp_p1:= player3_position-16;
    index_x:= (temp_p1) * 100 ;
    index_y:= 2 * 100 ;
    end
  else if (player3_position > 23) AND (player3_position <= 31) then
    begin
    temp_p1:= player3_position-24;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 3 * 100 ;
    end
  else if (player3_position > 31) AND (player3_position <= 39) then
    begin
    temp_p1:= player3_position-32;
    index_x:= (temp_p1) * 100 ;
    index_y:= 4 * 100 ;
    end
  else if (player3_position >39) AND (player3_position <= 47) then
    begin
    temp_p1:= player3_position-40;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 5 * 100 ;
    end
  else if (player3_position >47) AND (player3_position <= 55) then
    begin
    temp_p1:= player3_position-48;
    index_x:= (temp_p1) * 100 ;
    index_y:= 6 * 100 ;
    end
  else if (player3_position > 55) AND (player3_position <= 63) then
    begin
    temp_p1:= player3_position-56;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 7 * 100 ;
    end ;
  //add all pieces back


    if (player3_position = player1_position) OR (player3_position = player2_position) OR (player3_position = player4_position) then
    begin
      Strm := TResourceStream.Create(HInstance, 'purplemini', RT_RCDATA);
      offset_player3:= 50;
    end
    else
     Strm := TResourceStream.Create(HInstance, 'purple', RT_RCDATA);
    try
      Jpg := TJPEGImage.Create;
    try
        Jpg.LoadFromStream(Strm);
        image1.Canvas.Draw(10+index_x, 710-index_y + offset_player3, Jpg);
//        Image1.Picture.Assign(Jpg);
      finally
       Jpg.Free;
      end;
    finally
      Strm.Free;
    end;
  end;

  //player 3 end

  //player 4 begin
  if (amount_p = 4) then
  begin

  index_x:=1;
  index_y:=1;
  //upate roll of dice and check win conditions
   if player4_position <= 7 then
  begin
    index_x:= player4_position * 100 ;
  end
  else if (player4_position > 7) AND (player4_position <= 15) then
  begin
    temp_p1:= player4_position-7;
    index_x:= (8-temp_p1) * 100 ;
    index_y:= 1 * 100 ;
    end
    else if (player4_position > 15) AND (player4_position <= 23) then
    begin
    temp_p1:= player4_position-16;
    index_x:= (temp_p1) * 100 ;
    index_y:= 2 * 100 ;
    end
  else if (player4_position > 23) AND (player4_position <= 31) then
    begin
    temp_p1:= player4_position-24;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 3 * 100 ;
    end
  else if (player4_position > 31) AND (player4_position <= 39) then
    begin
    temp_p1:= player4_position-32;
    index_x:= (temp_p1) * 100 ;
    index_y:= 4 * 100 ;
    end
  else if (player4_position >39) AND (player4_position <= 47) then
    begin
    temp_p1:= player4_position-40;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 5 * 100 ;
    end
  else if (player4_position >47) AND (player4_position <= 55) then
    begin
    temp_p1:= player4_position-48;
    index_x:= (temp_p1) * 100 ;
    index_y:= 6 * 100 ;
    end
  else if (player4_position > 55) AND (player4_position <= 63) then
    begin
    temp_p1:= player4_position-56;
    index_x:= (7-temp_p1) * 100 ;
    index_y:= 7 * 100 ;
    end ;
  //add all pieces back


    if (player4_position = player1_position) OR (player4_position = player2_position) OR (player4_position = player3_position) then
    begin
          Strm := TResourceStream.Create(HInstance, 'greenmini', RT_RCDATA);
          offset_player4:= 45;
    end
    else
      Strm := TResourceStream.Create(HInstance, 'green', RT_RCDATA);
    try
      Jpg := TJPEGImage.Create;
    try
        Jpg.LoadFromStream(Strm);
        image1.Canvas.Draw(10+index_x+offset_player4, 710-index_y+offset_player4, Jpg);
  //      Image1.Picture.Assign(Jpg);
      finally
        Jpg.Free;
      end;
    finally
      Strm.Free;
    end;
  end;

  //player 4 end




end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  init;
end;

procedure TForm1.init;
var
  i:byte;
  Strm: TResourceStream;
  Jpg: TJPEGImage;
  Png: TPngImage;
  amount_p: Integer;
begin

  player1_position:= 0;
  player2_position:= 0;
  player3_position:= 0;
  player4_position:= 0;
  first_time:= True;
  who_turn:=1;
  Image2.Visible := True;
  Image3.Visible := False;
  Image4.Visible := False;
  Image5.Visible := False;
  ImgDice1.Visible := False;
  ImgDice2.Visible := False;
  ImgDice3.Visible := False;
  ImgDice4.Visible := False;
  ImgDice5.Visible := False;
  ImgDice6.Visible := False;
  ;
    with   Image1.Canvas do begin
      Brush.Color:=clwhite;
      Brush.Style:=bssolid;
      Pen.Color:=clBlack;
      Pen.Width:=5;
      Rectangle(1,1,800,800);

      for i := 1 to 8 do
        begin
          moveto(100*i,0);
          Lineto(100*i,800);
          moveto(0,100*i);
          Lineto(800,100*i);
        end;
    end;




end;

end.
