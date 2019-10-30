unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellApi;

type
  TForm1 = class(TForm)
    alga_bruto_f: TEdit;
    NG_f: TComboBox;
    apg_f: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NM_dif_f: TEdit;
    Label4: TLabel;
    Button1: TButton;
    alga_f: TPanel;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    atvieglojums_f: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    SN_f: TPanel;
    IIN_f: TPanel;
    DDSN_f: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure NG_fSelect(Sender: TObject);
    procedure Label6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  alga_bruto, SN, NM, IIN, apg, PA, alga_neto, DDSN:real;
  IIN_20:real=0.2;
  IIN_23:real=0.23;
  SN_likme:real=0.11;
  apg_likme:real=200;
  DDSN_likme:real=0.2409;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
alga_bruto:=strtofloat(alga_bruto_f.Text);
NM:=strtofloat(nm_dif_f.Text);
apg:=strtofloat(apg_f.Text)*apg_likme;
SN:=alga_bruto*sn_likme;
case atvieglojums_f.ItemIndex of
0: PA:=0;
1: PA:=154;
2: PA:=154;
3: PA:=120;
4: PA:=154;
end;

if alga_bruto>1667 then
begin
  if SN+NM+apg+pa<1667 then
    begin
      IIN:=((1667-SN-NM-apg-PA)*IIN_20)+((alga_bruto-1667)*IIN_23);
    end else
        IIN:=(alga_bruto-SN-NM-apg-PA)*IIN_23;
end else
  IIN:=(alga_bruto-SN-NM-apg-PA)*IIN_20;

if IIN<0 then IIN:=0;
alga_neto:=alga_bruto-SN-IIN;
DDSN:=alga_bruto*DDSN_likme;
alga_f.Caption:=floattostr(alga_neto);
DDSN_f.Caption:=floattostr(ddsn);
IIN_f.Caption:=floattostr(IIN);
SN_f.caption:=floattostr(SN);
end;



procedure TForm1.NG_fSelect(Sender: TObject);
begin
case ng_f.ItemIndex of
0:begin
    nm_dif_f.Enabled:=true;
    apg_f.Enabled:=true;
    atvieglojums_f.Enabled:=true;
  end;
1:begin
    nm_dif_f.Enabled:=false;
    apg_f.Text:='0';
    apg_f.Enabled:=false;
    nm_dif_f.Text:='0';
    atvieglojums_f.ItemIndex:=0;
    atvieglojums_f.enabled:=false;
  end;
end;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
ShellExecute(
    Application.Handle,
    'open',
    'https://eds.vid.gov.lv/login/',
    nil,
    nil,
    0);
end;



end.
