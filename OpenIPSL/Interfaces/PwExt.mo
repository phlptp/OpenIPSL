within OpenIPSL.Interfaces;

model PwExt
 "Connector for electrical blocks treating voltage and current as complex variables with input as voltage and output as powers"
  Real vr "Real part of the voltage";
  Real vi "Imaginary part of the voltage";
  Real ir "Real part of the current";
  Real ii "Imaginary part of the current";
  Modelica.Blocks.Interfaces.RealInput Vmag annotation (Placement(
        visible = true,transformation(extent = {{-120, 78}, {-100, 98}}, rotation = 0), iconTransformation(extent = {{-210, -80}, {-190, -60}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Vangle annotation (Placement(
        visible = true,transformation(extent = {{-120, 44}, {-100, 64}}, rotation = 0), iconTransformation(extent = {{-210, -80}, {-190, -60}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput P
    annotation (Placement(visible = true, transformation(extent = {{106, 80}, {126, 100}}, rotation = 0), iconTransformation(extent = {{10, -120}, {30, -100}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Q
    annotation (Placement(visible = true, transformation(extent = {{106, 50}, {126, 70}}, rotation = 0), iconTransformation(extent = {{10, -120}, {30, -100}}, rotation = 0)));
  annotation (
    Icon(graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}),
    Diagram(graphics={Text(
          extent={{-100,160},{100,120}},
          lineColor={0,0,255},
          textString="%name"), Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid)}),
    Documentation);
equation
-P = vr*ir + vi*ii;
  -Q = vi*ir - vr*ii;
  Vmag = sqrt(vr^2 + vi^2);
  Vangle = atan2(vi, vr);
end PwExt;
