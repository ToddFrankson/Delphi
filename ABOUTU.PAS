unit Aboutu;

interface

uses
  System.SysUtils, WinAPI.Windows, winapi.Messages, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls,  VCL.StdCtrls, VCL.Buttons;

type
  TAboutForm = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.DFM}


end.
