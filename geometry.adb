with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;
with Ada.Numerics;
use Ada.Numerics;

package body Geometry is
    function distance(point1, point2 : Point) return Float is begin
        return Sqrt(
            (point2.x - point1.x)**2+
            (point2.y - point1.y)**2+
            (point2.z - point1.z)**2);
    end distance;

    function midpoint(point1, point2 : Point) return Point is
        result : Point;
    begin
        result.x := (point1.x + point2.x)/2.0;
        result.y := (point1.y + point2.y)/2.0;
        result.z := (point1.z + point2.z)/2.0;
        return result;
    end midpoint;

    -- Rectangle functions
    function volume(s : Rectangle) return Float is begin
        return s.width * s.length * s.height;
    end volume;

    function surface_area(s : Rectangle) return Float is begin
        return 2.0*s.width*s.length + 2.0*s.length*s.height + 2.0*s.width*s.height;
    end surface_area;

    -- Circle functions
    function surface_area(s : Circle) return Float is begin
        return Pi * s.radius**2;
    end surface_area;

    function circumference(s : Circle) return Float is begin
        return Pi * s.radius**2;
    end circumference;

    -- Ellipse functions
    function surface_area(s : Ellipse) return Float is begin
        return Pi * s.a * s.b;
    end surface_area;

    function circumference(s : Ellipse) return Float is begin
        -- 2*\pi*\sqrt{\frac{a^2+b^2}{2}}
        return 2.0 * Pi * Sqrt((s.a**2+s.b**2)/2.0);
    end circumference;

    -- Cylinder functions
    function volume(s : Cylinder) return Float is begin
       return Pi * s.radius**2 * s.height;
    end volume;

    function surface_area(s : Cylinder) return Float is begin
        return 2.0 * Pi * s.radius**2 + 2.0 * Pi * s.radius * s.height;
    end surface_area;


    -- Sphere functions 
    function volume(s : Sphere) return Float is begin
        return (4.0/3.0) * Pi * s.radius**3;
    end volume;

    function surface_area(s : Sphere) return Float is begin
        return 4.0 * Pi * s.radius**2;
    end surface_area;

end Geometry;

