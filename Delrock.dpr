program DelRock;

uses
  Forms,
  SysUtils,
  Controls,
  DRockU in 'DRockU.pas' {AsteroidForm},
  Trigu in 'Trigu.pas',
  Aboutu in 'ABOUTU.PAS' {AboutForm},
  Splash in 'SPLASH.PAS' {SplashForm};

{$R *.RES}

var
   StartTime: TDateTime;  {timer for the splash screen}

begin
  {let's show our splash screen}
  try
     SplashForm := TSplashForm.Create(Application);
     SplashForm.Show;
     SplashForm.Update;

     {keep it on the screen for a few seconds}

     StartTime := Time;
     Screen.Cursor := crHourglass;
     repeat  {delay for approximately five seconds}
        Application.processmessages;
     until (Time-StartTime) > 0.00005;

  finally
         SplashForm.Free; {Don't forget to free it...}
  end;

  Screen.Cursor := crDefault;

  Application.Title := 'Delphi ROCKS!';
  Application.CreateForm(TAsteroidForm, AsteroidForm);
  Application.Run;
end.
