unit uVerifCodici;

interface

type TSetCaratteri = set of Char;

function VerificaCodiceFiscale(CodiceFiscale: String): Boolean;
function VerificaPartitaIVA(PartitaIVA: String): Boolean;

function CalcolaCodiceFiscale(Cognome, Nome: String;
                              Sesso: Char;
                              Giorno, Mese, Anno: Word;
                              CodiceComune: String): String;

function FiltraStringa(S: String; SetCar: TSetCaratteri): String;

implementation

uses SysUtils;

const InsiemeConsonanti: TSetCaratteri =
['A'..'Z']-['A','E','I','O','U'];
      InsiemeVocali: TSetCaratteri = ['A','E','I','O','U'];

const CodiciMesi: String = 'ABCDEHLMPRST';
      CodiciControllo: String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

function ValoreCarPosPari(C: Char): Integer;
begin
  Result := -1;
  case C of
    '0' : Result := 0;
    '1' : Result := 1;
    '2' : Result := 2;
    '3' : Result := 3;
    '4' : Result := 4;
    '5' : Result := 5;
    '6' : Result := 6;
    '7' : Result := 7;
    '8' : Result := 8;
    '9' : Result := 9;
    'A' : Result := 0;
    'B' : Result := 1;
    'C' : Result := 2;
    'D' : Result := 3;
    'E' : Result := 4;
    'F' : Result := 5;
    'G' : Result := 6;
    'H' : Result := 7;
    'I' : Result := 8;
    'J' : Result := 9;
    'K' : Result := 10;
    'L' : Result := 11;
    'M' : Result := 12;
    'N' : Result := 13;
    'O' : Result := 14;
    'P' : Result := 15;
    'Q' : Result := 16;
    'R' : Result := 17;
    'S' : Result := 18;
    'T' : Result := 19;
    'U' : Result := 20;
    'V' : Result := 21;
    'W' : Result := 22;
    'X' : Result := 23;
    'Y' : Result := 24;
    'Z' : Result := 25;
  end;
end;

function ValoreCarPosDispari(C: Char): Integer;
begin
  Result := -1;
  case C of
    '0' : Result := 1;
    '1' : Result := 0;
    '2' : Result := 5;
    '3' : Result := 7;
    '4' : Result := 9;
    '5' : Result := 13;
    '6' : Result := 15;
    '7' : Result := 17;
    '8' : Result := 19;
    '9' : Result := 21;
    'A' : Result := 1;
    'B' : Result := 0;
    'C' : Result := 5;
    'D' : Result := 7;
    'E' : Result := 9;
    'F' : Result := 13;
    'G' : Result := 15;
    'H' : Result := 17;
    'I' : Result := 19;
    'J' : Result := 21;
    'K' : Result := 2;
    'L' : Result := 4;
    'M' : Result := 18;
    'N' : Result := 20;
    'O' : Result := 11;
    'P' : Result := 3;
    'Q' : Result := 6;
    'R' : Result := 8;
    'S' : Result := 12;
    'T' : Result := 14;
    'U' : Result := 16;
    'V' : Result := 10;
    'W' : Result := 22;
    'X' : Result := 25;
    'Y' : Result := 24;
    'Z' : Result := 23;
  end;
end;

function FiltraStringa(S: String; SetCar: TSetCaratteri): String;
var
  I: Integer;
  T: String;
begin
  T := '';
  for I := 1 to Length(S) do
  begin
    if S[I] in SetCar then
      T := T + S[I];
  end;
  Result := T;
end;

function CalcolaCodiceControllo(CodiceFiscale: String): Char;
var
  I, CodiceControllo: Integer;
begin
  CodiceControllo := 0;
  for I := 1 to Length(CodiceFiscale) do
  begin
    if Odd(I) then
      Inc(CodiceControllo, ValoreCarPosDispari(CodiceFiscale[I]))
    else
      Inc(CodiceControllo, ValoreCarPosPari(CodiceFiscale[I]))
  end;
  CodiceControllo := CodiceControllo mod 26;
  Result := CodiciControllo[CodiceControllo+1];
end;

//
// ------ Interfaccia
//

function CalcolaCodiceFiscale;
var
  ConsonantiCognome: String;
  ConsonantiNome: String;

  VocaliCognome: String;
  VocaliNome: String;

  CodiceCognome: String;
  CodiceNome: String;
  CodiceAnno: String;
  CodiceMese: String;
  CodiceGiorno: String;

begin
  if (Sesso = '') or
     (Cognome = '') or
     (Nome = '') or
     (CodiceComune = '') then
  begin
    Result := '';
    Exit;
  end;

  Sesso := UpCase(Sesso);

  Cognome := FiltraStringa(UpperCase(Trim(Cognome)), ['A'..'Z']);
  Nome := FiltraStringa(UpperCase(Trim(Nome)), ['A'..'Z']);

  ConsonantiCognome := FiltraStringa(Cognome, InsiemeConsonanti);
  ConsonantiNome := FiltraStringa(Nome, InsiemeConsonanti);

  VocaliCognome := FiltraStringa(Cognome, InsiemeVocali);
  VocaliNome := FiltraStringa(Nome, InsiemeVocali);

  CodiceCognome := Copy(ConsonantiCognome + VocaliCognome + 'XX', 1, 3);

  CodiceNome := ConsonantiNome + VocaliNome + 'XX';
  if (Length(ConsonantiNome) > 3) then
    Delete(CodiceNome, 2, 1);
  CodiceNome := Copy(CodiceNome, 1, 3);

  CodiceAnno := Format('%.2d', [Anno mod 100]);

  CodiceMese := CodiciMesi[Mese];

  if (Sesso = 'F') then Giorno := Giorno + 40;

  CodiceGiorno := Format('%.2d', [Giorno]);

  Result := CodiceCognome + CodiceNome +
            CodiceAnno + CodiceMese + CodiceGiorno +
            CodiceComune;

  Result := Result + CalcolaCodiceControllo(Result);
end;

function VerificaCodiceFiscale;
begin
  CodiceFiscale := UpperCase(CodiceFiscale);
  Result := (CalcolaCodiceControllo(
                    Copy(CodiceFiscale, 1, Length(CodiceFiscale)-1)
                                   ) =
             CodiceFiscale[Length(CodiceFiscale)]);
end;

function VerificaPartitaIVA;
var
  I: Integer;
  Somma: Integer;
  Cifre: array [1..11] of Integer;
  K: Integer;
begin
  PartitaIVA := Trim(PartitaIVA);

  if Length(PartitaIVA) <> 11 then
  begin
    Result := false;
    Exit;
  end;
  for I := 1 to Length(PartitaIVA) do
  begin
    if not (PartitaIVA[I] in ['0'..'9']) then
    begin
      Result := false;
      Exit;
    end;
  end;

  for I := 1 to 11 do
  begin
    Cifre[I] := Ord(PartitaIVA[I]) - Ord('0');
  end;

  Somma := Cifre[1] + Cifre[3] + Cifre[5] + Cifre[7] + Cifre[9];

  I := 2;
  while (I <= 10) do
  begin
    K := 2 * Cifre[I];
    if K > 9 then K := K - 9;
    Somma := Somma + K;
    Inc(I, 2);
  end;

  Result := ((10 - Somma mod 10) mod 10) = Cifre[11];
end;

end. 
