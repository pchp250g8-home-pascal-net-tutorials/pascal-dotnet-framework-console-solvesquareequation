uses
  System;
begin
  var a : Single;
  var b : Single;
  var c : Single;
  Console.Clear();
	Console.WriteLine('Input coefficients of square equation');
	Single.TryParse(Console.ReadLine(), a);
	Single.TryParse(Console.ReadLine(), b);
	Single.TryParse(Console.ReadLine(), c);
	Console.WriteLine
	(
	  'Trying to solve the equation:{0} * x ^ 2 + {1} * x + {2} = 0', 
	  a, b, c
	);
	if a = 0 then
		if (b = 0) and (c = 0) then
			Console.WriteLine('The answer is any number')
		else If (b = 0) and (c <> 0) Then
			Console.WriteLine('The equation has no roots')
		else
			Console.WriteLine('The equation has the following root:{0}', -c / b)
	else
  begin
		var d := b * b - 4 * a * c;
		var nRoots := Math.Sign(d) + 1;
		If nRoots > 0 Then
    begin
			var x1 := (-b - Math.Sqrt(d)) / (2 * a);
			var x2 := (-b + Math.Sqrt(d)) / (2 * a);
			Console.WriteLine('The equation has the following roots:');
			Console.WriteLine('x1 = {0}', x1);
			Console.WriteLine('x2 = {0}', x2);
		end
		else
		  Console.WriteLine('The equation has no roots');
	end;
	Console.Read();
end.