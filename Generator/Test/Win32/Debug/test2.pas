unit test2;

interface

// *********************************** 
//   classes for test2.proto
//   generated by ProtoBufGenerator 
//             kami-soft 2016
// ***********************************
uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  pbInput,
  pbOutput,
  pbPublic,
  uAbstractProtoBufClasses;

type
  TEnumG0=(
    g1 = 1,
    g2 = 2
  );

  TNestedMsg0 = class(TAbstractProtoBufClass)
  strict private
    FNestedField1: integer;
  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public

    property NestedField1:integer read FNestedField1 write FNestedField1;
  end;

  TTestMsg0 = class(TAbstractProtoBufClass)
  strict private
  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public

  end;

  TTestMsg1 = class(TAbstractProtoBufClass)
  strict private
    FDefField1: integer;
    FDefField2: Int64;
    FDefField3: string;
    FDefField4: Double;
    FDefField5: Boolean;
    FDefField6: TEnumG0;
    FDefField7: Int64;
    FDefField8: integer;
    FDefField9: Single;
    FDefField10: TBytes;
    FFieldMsg1: TTestMsg0;
    FFieldArr1List: TList<integer>;
    FFieldArr2List: TList<integer>;
    FFieldArr3List: TList<string>;
    FFieldMArr2List: TProtoBufClassList<TNestedMsg0>;
  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public
    constructor Create; override;
    destructor Destroy; override;


    property DefField1:integer read FDefField1 write FDefField1 default 2;
    property DefField2:Int64 read FDefField2 write FDefField2 default -1;
    property DefField3:string read FDefField3 write FDefField3; // default 'yes "it is';
    property DefField4:Double read FDefField4 write FDefField4; // default 1.1;
    property DefField5:Boolean read FDefField5 write FDefField5; // default true;
    property DefField6:TEnumG0 read FDefField6 write FDefField6 default g2;
    property DefField7:Int64 read FDefField7 write FDefField7 default 100;
    property DefField8:integer read FDefField8 write FDefField8 default 1;
    property DefField9:Single read FDefField9 write FDefField9; // default 1.23e1;
    property DefField10:TBytes read FDefField10 write FDefField10;
// repeated fields 
    property FieldMsg1:TTestMsg0 read FFieldMsg1;
    property FieldArr1List:TList<integer> read FFieldArr1List;
    property FieldArr2List:TList<integer> read FFieldArr2List;
    property FieldArr3List:TList<string> read FFieldArr3List;
// fields of imported types 
    property FieldMArr2List:TProtoBufClassList<TNestedMsg0> read FFieldMArr2List;
  end;


implementation


function TNestedMsg0.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean;
begin
  Result := inherited LoadSingleFieldFromBuf(ProtoBuf, FieldNumber, WireType);
  if Result then
    exit;
  case fieldNumber of
    1:
      begin
        FNestedField1 := ProtoBuf.readInt32;
        Result := True;
      end;
  end;
end;

procedure TNestedMsg0.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
begin
  inherited;
  ProtoBuf.writeInt32(1, FNestedField1);
end;


function TTestMsg0.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean;
begin
  Result := inherited LoadSingleFieldFromBuf(ProtoBuf, FieldNumber, WireType);
end;

procedure TTestMsg0.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
begin
  inherited;
end;


constructor TTestMsg1.Create;
begin
  inherited;
  FDefField1 := 2;
  FDefField2 := -1;
  RegisterRequiredField(2);
  FDefField3 := 'yes "it is';
  FDefField4 := 1.1;
  FDefField5 := true;
  FDefField6 := g2;
  FDefField7 := 100;
  FDefField8 := 1;
  FDefField9 := 1.23e1;
  FFieldMsg1 := TTestMsg0.Create;
  FFieldArr1List := TList<integer>.Create;
  FFieldArr2List := TList<integer>.Create;
  FFieldArr3List := TList<string>.Create;
  FFieldMArr2List := TProtoBufClassList<TNestedMsg0>.Create;
end;

destructor TTestMsg1.Destroy;
begin
  FFieldMsg1.Free;
  FFieldArr1List.Free;
  FFieldArr2List.Free;
  FFieldArr3List.Free;
  FFieldMArr2List.Free;
  inherited;
end;

function TTestMsg1.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: integer; WireType: integer): Boolean;
var
  tmpBuf: TProtoBufInput;
begin
  Result := inherited LoadSingleFieldFromBuf(ProtoBuf, FieldNumber, WireType);
  if Result then
    exit;
  case fieldNumber of
    1:
      begin
        FDefField1 := ProtoBuf.readInt32;
        Result := True;
      end;
    2:
      begin
        FDefField2 := ProtoBuf.readInt64;
        Result := True;
      end;
    3:
      begin
        FDefField3 := ProtoBuf.readString;
        Result := True;
      end;
    4:
      begin
        FDefField4 := ProtoBuf.readDouble;
        Result := True;
      end;
    5:
      begin
        FDefField5 := ProtoBuf.readBoolean;
        Result := True;
      end;
    6:
      begin
        FDefField6 := TEnumG0(ProtoBuf.readEnum);
        Result := True;
      end;
    7:
      begin
        FDefField7 := ProtoBuf.readSInt64;
        Result := True;
      end;
    8:
      begin
        FDefField8 := ProtoBuf.readFixed32;
        Result := True;
      end;
    9:
      begin
        FDefField9 := ProtoBuf.readFloat;
        Result := True;
      end;
    10:
      begin
        FDefField10 := ProtoBuf.readBytes;
        Result := True;
      end;
    20:
      begin
        tmpBuf := ProtoBuf.ReadSubProtoBufInput;
        try
          FFieldMsg1.LoadFromBuf(tmpBuf);
        finally
          tmpBuf.Free;
        end;
        Result := True;
      end;
    40:
      begin
        FFieldArr1List.Add(ProtoBuf.readInt32);
        Result := True;
      end;
    41:
      begin
        if WireType = WIRETYPE_LENGTH_DELIMITED then
          begin
            tmpBuf:=ProtoBuf.ReadSubProtoBufInput;
            try
              while tmpBuf.getPos<tmpBuf.BufSize do
                FFieldArr2List.Add(ProtoBuf.readRawVarint32);
            finally
              tmpBuf.Free;
            end;
          end
        else
          FFieldArr2List.Add(ProtoBuf.readRawVarint32);
        Result := True;
      end;
    42:
      begin
        FFieldArr3List.Add(ProtoBuf.readString);
        Result := True;
      end;
    44:
      begin
        FFieldMArr2List.AddFromBuf(ProtoBuf, fieldNumber);
        Result := True;
      end;
  end;
end;

procedure TTestMsg1.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
var
  tmpBuf: TProtoBufOutput;
  i: integer;
begin
  inherited;
  ProtoBuf.writeInt32(1, FDefField1);
  ProtoBuf.writeInt64(2, FDefField2);
  ProtoBuf.writeString(3, FDefField3);
  ProtoBuf.writeDouble(4, FDefField4);
  ProtoBuf.writeBoolean(5, FDefField5);
  ProtoBuf.writeInt32(6, integer(FDefField6));
  ProtoBuf.writeSInt64(7, FDefField7);
  ProtoBuf.writeFixed32(8, FDefField8);
  ProtoBuf.writeFloat(9, FDefField9);
  ProtoBuf.writeBytes(10, FDefField10);
  tmpBuf:=TProtoBufOutput.Create;
  try
    FFieldMsg1.SaveToBuf(tmpBuf);
    ProtoBuf.writeMessage(20, tmpBuf);
  finally
    tmpBuf.Free;
  end;
  for i := 0 to FFieldArr1List.Count-1 do
    ProtoBuf.writeInt32(40, FFieldArr1List[i]);
  tmpBuf:=TProtoBufOutput.Create;
  try
    for i := 0 to FFieldArr2List.Count-1 do
      tmpBuf.writeRawVarint32(FFieldArr2List[i]);
    ProtoBuf.writeMessage(41, tmpBuf);
  finally
    tmpBuf.Free;
  end;
  for i := 0 to FFieldArr3List.Count-1 do
    ProtoBuf.writeString(42, FFieldArr3List[i]);
  FFieldMArr2List.SaveToBuf(ProtoBuf, 44);
end;

end.