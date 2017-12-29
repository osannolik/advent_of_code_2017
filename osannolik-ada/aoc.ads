with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package AOC is

   type Point is record
      X, Y : Integer := 0;
   end record;

   function "+" (P1, P2 : in Point) return Point;

   function Image (P : in Point) return String;

   function Manhattan_Distance (P1 : in Point;
                                P2 : in Point := (0, 0))
                                return Natural;

   package V_String is new Ada.Containers.Vectors
      (Natural,
       Unbounded_String);

   package V_Integer is new Ada.Containers.Vectors
      (Natural,
       Integer);

   type Integer_Array is array (Integer range <>) of Integer;

   type Natural_2D is array (Integer range <>, Integer range <>) of Natural;

   function To_Integer_Array (IV : in V_Integer.Vector)
                              return Integer_Array;

   procedure Split_String_At_Char (S       : in     String;
   	                               Char    : in     Character;
   	                               Strings : in out V_String.Vector);

   procedure Get_File_Rows (V         : in out V_String.Vector;
   	                        File_Name : in     String);

   function Get_File_String (File_Name : in String)
                             return String;

   function To_Integer (C : in Character) 
                        return Integer;

end AOC;