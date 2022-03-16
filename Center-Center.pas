Program CenterCenter;

Uses Math;

Const
Pitch = 5;
PulleyTeeth1 = 112;
PulleyTeeth2 = 18;
Circumference1 = PulleyTeeth1*Pitch;
Circumference2 = PulleyTeeth2*Pitch;
Diameter1 = Circumference1/Pi;
Diameter2 = Circumference2/Pi;
BeltLength = 740;


Var
  B,CenterDistance,Theta,NewBeltLength,Adjustment,AdjustmentUsed :Double;
  I:LongInt;

Begin

Adjustment:=1;
AdjustmentUsed:=0;
I:=0;
Writeln ('        Large Teeth = ',PulleyTeeth1);
Writeln ('        Small Teeth = ',PulleyTeeth2);
Writeln ('Large Circumference = ',Circumference1);
Writeln ('Small Circumference = ',Circumference2);
Writeln ('     Large Diameter = ',Diameter1:0:15);
Writeln ('     Small Diameter = ',Diameter2:0:15);
Writeln ('Desired Belt Length = ',BeltLength);
B := (4*BeltLength) - ((Pi*2)*(Diameter1+Diameter2));
CenterDistance := (B+SQRT(SQR(B)-(32*SQR(Diameter1-Diameter2)))) / 16;
Repeat
   Theta := ArcSin((Diameter1-Diameter2)/(2*CenterDistance));
   NewBeltLength:= (2*CenterDistance*(Cos(Theta))) + ((Pi * (Diameter1 + Diameter2))/2) + ((Theta*(Diameter1 - Diameter2)));
   Writeln(I:2,'  Adjustment = ',AdjustmentUsed:0:15,'  Center Distance = ',CenterDistance:0:15,'  New Belt Length = ',NewBeltLength:0:15);
   If NewBeltLength>BeltLength Then
      CenterDistance:=CenterDistance-Adjustment
   Else
      If NewBeltLength<BeltLength Then
         CenterDistance:=CenterDistance+Adjustment ;
   Adjustment:=Adjustment/2;
   AdjustmentUsed:=Adjustment;
   Inc(I);
Until (I=100) or (NewBeltLength=BeltLength);
End.
