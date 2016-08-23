program $Identifier () ;

procedure $Identifier $FormalParameters;
     $LabelDeclarations
     $ConstantDefinitions
     $TypeDefinitions
     $VariableDeclarations
          
     begin
       $Variable := $String;
       if $Expression then
         $Statement
       else
         begin
           while not $Expression do
             $Statement
         end
     end;
         
begin
  $Variable := $Expression;  
  while $Expression do
    repeat
      $Statement
    until $Expression;  while $Expression do
    $Statement;  repeat
    $Statement
  until $Expression;  $Variable := $Expression;
  $Variable := $Expression;
  while $Expression do
    begin
      $Statement
    end;
  repeat
    $Statement
  until $Expression;
  x.$Identifier := $Expression 
end.