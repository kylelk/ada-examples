package Geometry is
    type Point is record
        x : Float;
        y : Float;
        z : Float;
    end record;


    type Angle is new Float range -360.0 .. 360.0;


    type Axes is record
        yaw   : Angle;
        pitch : Angle;
        roll  : Angle; 
    end record;


    type Shape is tagged record
        position : Point;
        rotation : Axes;
    end record;


    type Rectangle is new Shape with record
      width  : Float;
      length : Float;
      height : Float;
    end record;
    function volume(s : Rectangle) return Float;
    function surface_area(s : Rectangle) return Float;
    
    type Circle is new Shape with record
        radius : Float;
    end record;
    function surface_area(s : Circle) return Float;
    function circumference(s : Circle) return Float;

    type Ellipse is new Shape with record
        a : Float;
        b : Float;
    end record;
    function surface_area(s : Ellipse) return Float;
    function circumference(s : Ellipse) return Float;

    type Cylinder is new Shape with record
        radius : Float;
        height : Float;
    end record;
    function volume(s : Cylinder) return Float;
    function surface_area(s : Cylinder) return Float;


    type Sphere is new Shape with record
        radius : Float;
    end record;
    function volume(s : Sphere) return Float;
    function surface_area(s : Sphere) return Float;


    function distance(point1, point2 : Point) return Float;
    function midpoint(point1, point2 : Point) return Point;
end Geometry;

