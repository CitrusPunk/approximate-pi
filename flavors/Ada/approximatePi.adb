-- REQUIREMENTS:
-- Ada compiler - I've used gcc via https://jmeubank.github.io/tdm-gcc/
-- Any other option should work as well just follow the steps on https://www.getadanow.com/
-- USAGE:
-- Compile source file via "gcc -c approximatePi.adb"
-- Bind compiled file via "gnatbind approximatePi"
-- Link files via "gnatbind approximatePi"
-- Execute in the prompt via "approximatePi.exe"

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Text_IO, Ada.Numerics.Float_Random;
use Ada.Text_IO, Ada.Numerics.Float_Random;
with Ada.Numerics;                      use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure ApproximatePi is
    Iterations       : Integer := 1_000_000;
    In_Circle        : Float   := 0.0;
    Gen              : Generator;
    X                : Float;
    Y                : Float;
    Distance         : Float;
    Pi_Approximation : Float;
begin
    for J in 0 .. Iterations loop
        X        := Random (Gen);
        Y        := Random (Gen);
        Distance := Sqrt (x * x + y * y);
        if Distance < 1.0 then
            In_Circle := In_Circle + 1.0;
        end if;
    end loop;
    Pi_Approximation := 4.0 * In_Circle / Float (Iterations);
    Put_Line (Float'Image (Pi_Approximation));
end ApproximatePi;
