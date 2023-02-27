program FftVisualizer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, tachartlazaruspkg, unitMain, unitChart, unitFftView, unitIFftView1
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormSin, FormSin);
  Application.CreateForm(TFormFftView, FormFftView);
  Application.CreateForm(TForm_IFftView, Form_IFftView);
  formsin.Show;


  FormFftView.Show;
  Form_IFftView.Show;


  Application.Run;


end.

