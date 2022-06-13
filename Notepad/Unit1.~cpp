//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
AnsiString filename="";
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Open1Click(TObject *Sender)
{
        if(OpenDialog1->Execute())
        {
                try
                {
                        tresc->Lines->LoadFromFile(OpenDialog1->FileName);
                }
                catch(...)
                {
                        ShowMessage("File open error");
                }
        }
}
//---------------------------------------------------------------------------






void __fastcall TForm1::Saveas1Click(TObject *Sender)
{
        if(SaveDialog1->Execute())
        {
                try
                {
                        tresc->Lines->SaveToFile(SaveDialog1->FileName);
                        filename = SaveDialog1->FileName;
                }
                catch(...)
                {
                        ShowMessage("File open error");
                }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Save1Click(TObject *Sender)
{
        if(filename!="")
        {
                tresc->Lines->SaveToFile(filename);
        }
        else
        {
                Form1->Saveas1Click(MainMenu1);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::New1Click(TObject *Sender)
{
        if(Application->MessageBox("Create new file?","Confirm",MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES )
        {
                tresc->Lines->Clear();
                filename="";
        }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::trescKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if(Shift.Contains(ssCtrl))
        {
                if(Shift.Contains(ssShift))
                {
                         if((Key=='s') || (Key=='S'))
                         {
                                 Form1->Saveas1Click(MainMenu1);
                         }     
                }
                else if((Key=='s') || (Key=='S'))
                {
                        Form1->Save1Click(MainMenu1);
                }
                else if((Key=='o') || (Key=='O'))
                {
                        Form1->Open1Click(MainMenu1);
                }
                else if((Key=='n') || (Key=='N'))
                {
                        Form1->New1Click(MainMenu1);
                }
        }          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Close1Click(TObject *Sender)
{
        if(Application->MessageBox("End the program?","Confirm",MB_YESNO | MB_ICONQUESTION) == IDYES )
        {
                Application->Terminate();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        if(Application->MessageBox("End the program?","Confirm",MB_YESNO | MB_ICONQUESTION) == IDNO )
        {
                Action=caNone;
        }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::Paste1Click(TObject *Sender)
{
        //Ta funkcja to funkcja cut tylko nazwa sie zjebala.
        tresc->CutToClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CopyCtrlC1Click(TObject *Sender)
{
        //Ta fukcja to funkcja kopiuj.
        tresc->CopyToClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PasteCtrlV1Click(TObject *Sender)
{
        //Ta funkcja to funkcja Wklej.
        tresc->PasteFromClipboard();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::linewrapping1Click(TObject *Sender)
{
        if(linewrapping1->Checked==true)
        {
                linewrapping1->Checked=false;
                tresc->WordWrap=false;
                tresc->ScrollBars= ssBoth;
        }
        else
        {
                linewrapping1->Checked=true;
                tresc->WordWrap=true;
                tresc->ScrollBars= ssVertical;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Font1Click(TObject *Sender)
{
        if(FontDialog1->Execute())
        {
                tresc->Font->Name=FontDialog1->Font->Name;
                tresc->Font->Color=FontDialog1->Font->Color;
                tresc->Font->Size=FontDialog1->Font->Size;
                tresc->Font->Style=FontDialog1->Font->Style;
        }
}
//---------------------------------------------------------------------------

