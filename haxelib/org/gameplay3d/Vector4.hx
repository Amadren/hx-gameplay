package org.gameplay3d;

import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Vector4
class Vector4 extends GameplayObject implements IVector4
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;
    public var z(get_z, set_z):Float;
    public var w(get_w, set_w):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _one:Vector4;
    static var _unitX:Vector4;
    static var _unitY:Vector4;
    static var _unitZ:Vector4;
    static var _unitW:Vector4;
    static var _zero:Vector4;

    // DECL: Vector4();
    public static function make():Vector4
    {
        return new Vector4(constructNativeObject());
    }

    // DECL: Vector4(const Vector4& copy);
    public static function make_V4(copy:IVector4):Vector4
    {
        return new Vector4(constructNativeObject_V4(copy));
    }

    // DECL: Vector4(const Vector4& p1, const Vector4& p2);
    public static function make_V4X2(p1:IVector4, p2:IVector4):Vector4
    {
        return new Vector4(constructNativeObject_V4X2(p1, p2));
    }

    // DECL: Vector4(const float* array);
    public static function make_ArrFlt(array:Array<Float>):Vector4
    {
        return new Vector4(constructNativeObject_ArrFlt(array));
    }

    // DECL: Vector4(float x, float y, float z, float w);
    public static function make_FltX4(x:Float, y:Float, z:Float, w:Float):Vector4
    {
        return new Vector4(constructNativeObject_FltX4(x, y, z, w));
    }

    // DECL: static void add(const Vector4& v1, const Vector4& v2, Vector4* dst);
    public static function add_V4X3(v1:IVector4, v2:IVector4, dst:Vector4):Void
    {
        hx_Vector4_static_add(v1.native(), v2.native(), dst.native());
    }

    // DECL: void add(const Vector4& v);
    public function add_V4(v:IVector4):Void
    {
        hx_Vector4_add(nativeObject, v.native());
    }

    // DECL: static float angle(const Vector4& v1, const Vector4& v2);
    public static function angle(v1:IVector4, v2:IVector4):Float
    {
        return hx_Vector4_static_angle(v1.native(), v2.native());
    }

    // DECL: static void clamp(const Vector4& v, const Vector4& min, const Vector4& max, Vector4* dst);
    public static function clamp_V4X4(v:IVector4, min:IVector4, max:IVector4, dst:Vector4):Void
    {
        hx_Vector4_static_clamp(v.native(), min.native(), max.native(), dst.native());
    }

    // DECL: void clamp(const Vector4& min, const Vector4& max);
    public function clamp_V4X2(min:IVector4, max:IVector4):Void
    {
        hx_Vector4_clamp(nativeObject, min.native(), max.native());
    }

    // DECL: float distance(const Vector4& v) const;
    public function distance(v:IVector4):Float
    {
        return hx_Vector4_distance(nativeObject, v.native());
    }

    // DECL: float distanceSquared(const Vector4& v) const;
    public function distanceSquared(v:IVector4):Float
    {
        return hx_Vector4_distanceSquared(nativeObject, v.native());
    }

    // DECL: float dot(const Vector4& v) const;
    public function dot_V4(v:IVector4):Float
    {
        return hx_Vector4_dot(nativeObject, v.native());
    }

    // DECL: static float dot(const Vector4& v1, const Vector4& v2);
    public static function dot_V4X2(v1:IVector4, v2:IVector4):Float
    {
        return hx_Vector4_static_dot(v1.native(), v2.native());
    }

    // DECL: static Vector4 fromColor(unsigned int color);
    public static function fromColor(color:Int):Vector4
    {
        return Vector4.wrap(hx_Vector4_static_fromColor(color));
    }

    // DECL: bool isOne() const;
    public function isOne():Bool
    {
        return hx_Vector4_isOne(nativeObject);
    }

    // DECL: bool isZero() const;
    public function isZero():Bool
    {
        return hx_Vector4_isZero(nativeObject);
    }

    // DECL: float length() const;
    public function length():Float
    {
        return hx_Vector4_length(nativeObject);
    }

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float
    {
        return hx_Vector4_lengthSquared(nativeObject);
    }

    // DECL: void negate();
    public function negate():Void
    {
        hx_Vector4_negate(nativeObject);
    }

    // DECL: Vector4& normalize();
    public function normalize():Vector4
    {
        hx_Vector4_normalize(nativeObject);
        return this;
    }

    // DECL: void normalize(Vector4* dst) const;
    public function normalize_V4(dst:Vector4):Void
    {
        hx_Vector4_normalize_V4(nativeObject, dst.native());
    }

    // DECL: static const Vector4& one();
    public static function one():IVector4
    {
        return Macros.impersonateResult(_one, hx_Vector4_static_one());
    }

    // DECL: void scale(float scalar);
    public function scale(scalar:Float):Void
    {
        hx_Vector4_scale(nativeObject, scalar);
    }

    // DECL: void set(const Vector4& p1, const Vector4& p2);
    public function set_V4X2(p1:IVector4, p2:IVector4):Void
    {
        hx_Vector4_set_V4X2(nativeObject, p1.native(), p2.native());
    }

    // DECL: void set(const Vector4& v);
    public function set_V4(v:IVector4):Void
    {
        hx_Vector4_set_V4(nativeObject, v.native());
    }

    // DECL: void set(const float* array);
    public function set_ArrFlt(array:Array<Float>):Void
    {
        hx_Vector4_set_ArrFlt(nativeObject, array);
    }

    // DECL: void set(float x, float y, float z, float w);
    public function set_FltX4(x:Float, y:Float, z:Float, w:Float):Void
    {
        hx_Vector4_set_FltX4(nativeObject, x, y, z, w);
    }

    // DECL: static void subtract(const Vector4& v1, const Vector4& v2, Vector4* dst);
    public static function subtract_V4X3(v1:IVector4, v2:IVector4, dst:Vector4):Void
    {
        hx_Vector4_static_subtract(v1.native(), v2.native(), dst.native());
    }

    // DECL: void subtract(const Vector4& v);
    public function subtract_V4(v:IVector4):Void
    {
        hx_Vector4_subtract(nativeObject, v.native());
    }

    // DECL: static const Vector4& unitW();
    public static function unitW():IVector4
    {
        return Macros.impersonateResult(_unitW, hx_Vector4_static_unitW());
    }

    // DECL: static const Vector4& unitX();
    public static function unitX():IVector4
    {
        return Macros.impersonateResult(_unitX, hx_Vector4_static_unitX());
    }

    // DECL: static const Vector4& unitY();
    public static function unitY():IVector4
    {
        return Macros.impersonateResult(_unitY, hx_Vector4_static_unitY());
    }

    // DECL: static const Vector4& unitZ();
    public static function unitZ():IVector4
    {
        return Macros.impersonateResult(_unitZ, hx_Vector4_static_unitZ());
    }

    // DECL: static const Vector4& zero();
    public static function zero():IVector4
    {
        return Macros.impersonateResult(_zero, hx_Vector4_static_zero());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Vector4();
    static function constructNativeObject():Dynamic
    {
        return hx_Vector4_Construct();
    }

    // DECL: Vector4(const Vector4& copy);
    static function constructNativeObject_V4(copy:IVector4):Dynamic
    {
        return hx_Vector4_Construct_V4(copy.native());
    }

    // DECL: Vector4(const IVector4& p1, const IVector4& p2);
    static function constructNativeObject_V4X2(p1:IVector4, p2:IVector4):Dynamic
    {
        return hx_Vector4_Construct_V4X2(p1.native(), p2.native());
    }

    // DECL: Vector4(const float* array);
    static function constructNativeObject_ArrFlt(array:Array<Float>):Dynamic
    {
        return hx_Vector4_Construct_ArrFlt(array);
    }

    // DECL: Vector4(float x, float y, float z, float w);
    static function constructNativeObject_FltX4(x:Float, y:Float, z:Float, w:Float):Dynamic
    {
        return hx_Vector4_Construct_FltX4(x, y, z, w);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_x():Float
    {
        return hx_Vector4_property_x_get(nativeObject);
    }

    function set_x(value:Float):Float
    {
        return hx_Vector4_property_x_set(nativeObject, value);
    }

    function get_y():Float
    {
        return hx_Vector4_property_y_get(nativeObject);
    }

    function set_y(value:Float):Float
    {
        return hx_Vector4_property_y_set(nativeObject, value);
    }

    function get_z():Float
    {
        return hx_Vector4_property_z_get(nativeObject);
    }

    function set_z(value:Float):Float
    {
        return hx_Vector4_property_z_set(nativeObject, value);
    }

    function get_w():Float
    {
        return hx_Vector4_property_w_get(nativeObject);
    }

    function set_w(value:Float):Float
    {
        return hx_Vector4_property_w_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Vector4_Construct = NativeInterface.loadMember(Vector4, "Construct", 0);
    static var hx_Vector4_Construct_V4 = NativeInterface.loadMember(Vector4, "Construct_V4", 1);
    static var hx_Vector4_Construct_V4X2 = NativeInterface.loadMember(Vector4, "Construct_V4X2", 2);
    static var hx_Vector4_Construct_ArrFlt = NativeInterface.loadMember(Vector4, "Construct_ArrFlt", 1);
    static var hx_Vector4_Construct_FltX4 = NativeInterface.loadMember(Vector4, "Construct_FltX4", 4);
    static var hx_Vector4_static_add = NativeInterface.loadMember(Vector4, "static_add", 3);
    static var hx_Vector4_add = NativeInterface.loadMember(Vector4, "add", 2);
    static var hx_Vector4_static_angle = NativeInterface.loadMember(Vector4, "static_angle", 2);
    static var hx_Vector4_static_clamp = NativeInterface.loadMember(Vector4, "static_clamp", 4);
    static var hx_Vector4_clamp = NativeInterface.loadMember(Vector4, "clamp", 3);
    static var hx_Vector4_distance = NativeInterface.loadMember(Vector4, "distance", 2);
    static var hx_Vector4_distanceSquared = NativeInterface.loadMember(Vector4, "distanceSquared", 2);
    static var hx_Vector4_dot = NativeInterface.loadMember(Vector4, "dot", 2);
    static var hx_Vector4_static_dot = NativeInterface.loadMember(Vector4, "static_dot", 2);
    static var hx_Vector4_static_fromColor = NativeInterface.loadMember(Vector4, "static_fromColor", 1);
    static var hx_Vector4_isOne = NativeInterface.loadMember(Vector4, "isOne", 1);
    static var hx_Vector4_isZero = NativeInterface.loadMember(Vector4, "isZero", 1);
    static var hx_Vector4_length = NativeInterface.loadMember(Vector4, "length", 1);
    static var hx_Vector4_lengthSquared = NativeInterface.loadMember(Vector4, "lengthSquared", 1);
    static var hx_Vector4_negate = NativeInterface.loadMember(Vector4, "negate", 1);
    static var hx_Vector4_normalize = NativeInterface.loadMember(Vector4, "normalize", 1);
    static var hx_Vector4_normalize_V4 = NativeInterface.loadMember(Vector4, "normalize_V4", 2);
    static var hx_Vector4_static_one = NativeInterface.loadMember(Vector4, "static_one", 0);
    static var hx_Vector4_scale = NativeInterface.loadMember(Vector4, "scale", 2);
    static var hx_Vector4_set_V4X2 = NativeInterface.loadMember(Vector4, "set_V4X2", 3);
    static var hx_Vector4_set_V4 = NativeInterface.loadMember(Vector4, "set_V4", 2);
    static var hx_Vector4_set_ArrFlt = NativeInterface.loadMember(Vector4, "set_ArrFlt", 2);
    static var hx_Vector4_set_FltX4 = NativeInterface.loadMember(Vector4, "set_FltX4", 5);
    static var hx_Vector4_static_subtract = NativeInterface.loadMember(Vector4, "static_subtract", 3);
    static var hx_Vector4_subtract = NativeInterface.loadMember(Vector4, "subtract", 2);
    static var hx_Vector4_static_unitW = NativeInterface.loadMember(Vector4, "static_unitW", 0);
    static var hx_Vector4_static_unitX = NativeInterface.loadMember(Vector4, "static_unitX", 0);
    static var hx_Vector4_static_unitY = NativeInterface.loadMember(Vector4, "static_unitY", 0);
    static var hx_Vector4_static_unitZ = NativeInterface.loadMember(Vector4, "static_unitZ", 0);
    static var hx_Vector4_static_zero = NativeInterface.loadMember(Vector4, "static_zero", 0);
    static var hx_Vector4_property_w_get = NativeInterface.loadMember(Vector4, "property_w_get", 1);
    static var hx_Vector4_property_w_set = NativeInterface.loadMember(Vector4, "property_w_set", 2);
    static var hx_Vector4_property_x_get = NativeInterface.loadMember(Vector4, "property_x_get", 1);
    static var hx_Vector4_property_x_set = NativeInterface.loadMember(Vector4, "property_x_set", 2);
    static var hx_Vector4_property_y_get = NativeInterface.loadMember(Vector4, "property_y_get", 1);
    static var hx_Vector4_property_y_set = NativeInterface.loadMember(Vector4, "property_y_set", 2);
    static var hx_Vector4_property_z_get = NativeInterface.loadMember(Vector4, "property_z_get", 1);
    static var hx_Vector4_property_z_set = NativeInterface.loadMember(Vector4, "property_z_set", 2);
}

// END
