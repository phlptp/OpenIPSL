within TwoAreas.Groups.PSAT;
model G3
  extends iPSL.Electrical.Essentials.pfComponent;
  iPSL.Connectors.PwPin pwPin annotation (Placement(transformation(extent={{100,-10},{120,10}}), iconTransformation(extent={{100,-10},{120,10}})));

  iPSL.Electrical.Machines.PSAT.SixthOrder.Order6 order6_1(
    Sn=900,
    Vn=20,
    ra=0.0025,
    xd1=0.3,
    D=0,
    xd=1.80,
    xq=1.7,
    xq1=0.55,
    xd2=0.25,
    xq2=0.25,
    Td10=8,
    Tq10=0.4,
    Td20=0.03,
    Tq20=0.05,
    V_b=V_b,
    V_0=V_0,
    angle_0=angle_0,
    P_0=P_0,
    Q_0=Q_0,
    M=12.35) annotation (Placement(transformation(extent={{-34,-54},{78,56}})));
equation
  connect(order6_1.p, pwPin) annotation (Line(points={{83.6,1.27302},{94.8,1.27302},{94.8,0},{110,0}}, color={0,0,255}));
  connect(order6_1.vf0, order6_1.vf) annotation (Line(points={{-22.8,61.5},{-22.8,72},{-46,72},{-46,28.5},{-34,28.5}}, color={0,0,127}));
  connect(order6_1.pm0, order6_1.pm) annotation (Line(points={{-22.8,-59.5},{-22.8,-76},{-22.8,-84},{-48,-84},{-48,-26.5},{-34,-26.5}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},{100,100}}), graphics={
        Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-48,2},{-20,56},{2,4},{24,-28},{48,22}},
          color={0,0,0},
          smooth=Smooth.Bezier),
        Text(
          extent={{-52,-18},{56,-66}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})));
end G3;
