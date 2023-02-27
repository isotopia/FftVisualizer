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
  Forms, unitChart, unitFftView, unitIFftView1, unitMain, tachartlazaruspkg;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;

  Application.CreateForm(TFormmain, Formmain);
  Application.CreateForm(TFormSin, FormSin);
  Application.CreateForm(TFormFftView, FormFftView);
  Application.CreateForm(TForm_IFftView, Form_IFftView);

  formsin.Show;
  FormFftView.Show;
  Form_IFftView.Show;




 // formsin.Show;


 // FormFftView.Show;
//  Form_IFftView.Show;


  Application.Run;


end.

