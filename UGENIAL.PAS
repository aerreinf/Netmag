Unit uGenial;

Interface

 Function Prep_ABI: Integer;
 Function Prep_Regioni: Integer;
 Function Prep_Province: Integer;


Var
 dasTables, dasFields, dasOrders: Array Of String;
 intTables, intFields, intOrders: Integer;

Implementation

Uses uAzDM, uPubDM;

Function Prep_ABI: Integer;
Begin
 // Prepare Table
 intTables:=1; // Length
 SetLength(dasTables,intTables);
 dasTables[0]:='TAB_ABI';
 // Prepare Fields
 intFields:=1; // Length
 SetLength(dasFields,intfields);
 dasFields[0]:='DESCR as ABI';
 // Prepare Orders
 intOrders:=1; // Length
 SetLength(dasOrders,intOrders);
 dasOrders[0]:='DESCR';
 // Call in datamodul
 Result:=dmodAz.Set_UniAz(dasTables,dasFields, dasOrders,'',
              intTables,intFields,intOrders,True);
End;

Function Prep_Regioni: Integer;
Begin
 // Prepare Table
 intTables:=1; // Length
 SetLength(dasTables,intTables);
 dasTables[0]:='TAB_REGIONI';
 // Prepare Fields
 intFields:=1; // Length
 SetLength(dasFields,intfields);
 dasFields[0]:='DESCR as Regioni';
 // Prepare Orders
 intOrders:=1; // Length
 SetLength(dasOrders,intOrders);
 dasOrders[0]:='DESCR';
 // Call in datamodul
 Result:=dmodPub.Set_UniPub(dasTables,dasFields, dasOrders,'',
              intTables,intFields,intOrders,True);
End;

Function Prep_Province: Integer;
Begin
 // Prepare Table
 intTables:=2; // Length
 SetLength(dasTables,intTables);
 dasTables[0]:='TAB_PROVINCE';
 dasTables[1]:='TAB_REGIONI';
 // Prepare Fields
 intFields:=3; // Length
 SetLength(dasFields,intfields);
 dasFields[0]:='TAB_PROVINCE.DESCR as Provincia';
 dasFields[1]:='TAB_PROVINCE.SIGLA as Sigla';
 dasFields[2]:='TAB_REGIONI.DESCR as Regione';
 // Prepare Orders
 intOrders:=2; // Length
 SetLength(dasOrders,intOrders);
 dasOrders[0]:='TAB_PROVINCE.DESCR';
 dasOrders[1]:='TAB_REGIONI.DESCR';
 // Call in datamodul
 Result:=dmodPub.Set_UniPub(dasTables,dasFields, dasOrders,
  'regione_id=id_regione',
              intTables,intFields,intOrders,True);
End;

Function Prep_Comuni: Integer;
Begin
 // Prepare Table
 intTables:=2; // Length
 SetLength(dasTables,intTables);
 dasTables[0]:='TAB_PROVINCE';
 dasTables[1]:='TAB_REGIONI';
 // Prepare Fields
 intFields:=3; // Length
 SetLength(dasFields,intfields);
 dasFields[0]:='TAB_PROVINCE.DESCR as Provincia';
 dasFields[1]:='TAB_PROVINCE.SIGLA as Sigla';
 dasFields[2]:='TAB_REGIONI.DESCR as Regione';
 // Prepare Orders
 intOrders:=2; // Length
 SetLength(dasOrders,intOrders);
 dasOrders[0]:='TAB_PROVINCE.DESCR';
 dasOrders[1]:='TAB_REGIONI.DESCR';
 // Call in datamodul
 Result:=dmodPub.Set_UniPub(dasTables,dasFields, dasOrders,
  'regione_id=id_regione',
              intTables,intFields,intOrders,True);
End;

end.
