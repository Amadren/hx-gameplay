package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Effect: public Ref
class Effect extends GameplayObject implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_Effect_bind(nativeObject);
    }

    // DECL: static Effect* createFromFile(const char* vshPath, const char* fshPath, const char* defines = NULL);
    public static function createFromFile(vshPath:String, fshPath:String, defines:String = null):Effect
    {
        return Effect.wrap(hx_Effect_static_createFromFile(vshPath, fshPath, defines));
    }

    // DECL: static Effect* createFromSource(const char* vshSource, const char* fshSource, const char* defines = NULL);
    public static function createFromSource(vshSource:String, fshSource:String, defines:String = null):Effect
    {
        return Effect.wrap(hx_Effect_static_createFromSource(vshSource, fshSource, defines));
    }

    // DECL: static Effect* getCurrentEffect();
    public static function getCurrentEffect():Effect
    {
        return Effect.wrap(hx_Effect_static_getCurrentEffect());
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Effect_getId(nativeObject);
    }

    // DECL: Uniform* getUniform(const char* name) const;
    public function getUniform_Str(name:String):Uniform
    {
        return Uniform.wrap(hx_Effect_getUniform_Str(nativeObject, name));
    }

    // DECL: Uniform* getUniform(unsigned int index) const;
    public function getUniform_Int(index:Int):Uniform
    {
        return Uniform.wrap(hx_Effect_getUniform_Int(nativeObject, index));
    }

    // DECL: unsigned int getUniformCount() const;
    public function getUniformCount():Int
    {
        return hx_Effect_getUniformCount(nativeObject);
    }

    // DECL: VertexAttribute getVertexAttribute(const char* name) const;
    public function getVertexAttribute(name:String):Handle
    {
        return Handle.wrap(hx_Effect_getVertexAttribute(nativeObject, name));
    }

    // DECL: void setValue(Uniform* uniform, const Matrix& value);
    public function setValue_Unif_Mat(uniform:Uniform, value:IMatrix):Void
    {
        hx_Effect_setValue_Unif_Mat(nativeObject, uniform.native(), value.native());
    }

    // DECL: void setValue(Uniform* uniform, const Matrix* values, unsigned int count = 1);
    public function setValue_Unif_ArrMat_Int(uniform:Uniform, values:Array<Matrix>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrMat_Int(nativeObject, uniform.native(), ConversionTools.insertArray(values), count);
    }

    // DECL: void setValue(Uniform* uniform, const Texture::Sampler* sampler);
    public function setValue_Unif_Smplr(uniform:Uniform, sampler:Texture_Sampler):Void
    {
        hx_Effect_setValue_Unif_Smplr(nativeObject, uniform.native(), sampler.native());
    }

    // DECL: void setValue(Uniform* uniform, const Texture::Sampler** values, unsigned int count);
    public function setValue(uniform:Uniform, values:Array<Texture_Sampler>, count:Int):Void
    {
        hx_Effect_setValue_Unif_ArrSmplr_Int(nativeObject, uniform.native(), ConversionTools.insertArray(values), count);
    }

    // DECL: void setValue(Uniform* uniform, const Vector2& value);
    public function setValue_Unif_V2(uniform:Uniform, value:IVector2):Void
    {
        hx_Effect_setValue_Unif_V2(nativeObject, uniform.native(), value.native());
    }

    // DECL: void setValue(Uniform* uniform, const Vector2* values, unsigned int count = 1);
    public function setValue_Unif_ArrV2_Int(uniform:Uniform, values:Array<Vector2>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrV2_Int(nativeObject, uniform.native(), ConversionTools.insertArray(values), count);
    }

    // DECL: void setValue(Uniform* uniform, const Vector3& value);
    public function setValue_Unif_V3(uniform:Uniform, value:IVector3):Void
    {
        hx_Effect_setValue_Unif_V3(nativeObject, uniform.native(), value.native());
    }

    // DECL: void setValue(Uniform* uniform, const Vector3* values, unsigned int count = 1);
    public function setValue_Unif_ArrV3_Int(uniform:Uniform, values:Array<Vector3>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrV3_Int(nativeObject, uniform.native(), ConversionTools.insertArray(values), count);
    }

    // DECL: void setValue(Uniform* uniform, const Vector4& value);
    public function setValue_Unif_V4(uniform:Uniform, value:IVector4):Void
    {
        hx_Effect_setValue_Unif_V4(nativeObject, uniform.native(), value.native());
    }

    // DECL: void setValue(Uniform* uniform, const Vector4* values, unsigned int count = 1);
    public function setValue_Unif_ArrV4_Int(uniform:Uniform, values:Array<Vector4>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrV4_Int(nativeObject, uniform.native(), ConversionTools.insertArray(values), count);
    }

    // DECL: void setValue(Uniform* uniform, const float* values, unsigned int count = 1);
    public function setValue_Unif_ArrFlt_Int(uniform:Uniform, values:Array<Float>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrFlt_Int(nativeObject, uniform.native(), values, count);
    }

    // DECL: void setValue(Uniform* uniform, const int* values, unsigned int count = 1);
    public function setValue_Unif_ArrInt_Int(uniform:Uniform, values:Array<Int>, count:Int = 1):Void
    {
        hx_Effect_setValue_Unif_ArrInt_Int(nativeObject, uniform.native(), values, count);
    }

    // DECL: void setValue(Uniform* uniform, float value);
    public function setValue_Unif_Flt(uniform:Uniform, value:Float):Void
    {
        hx_Effect_setValue_Unif_Flt(nativeObject, uniform.native(), value);
    }

    // DECL: void setValue(Uniform* uniform, int value);
    public function setValue_Unif_Int(uniform:Uniform, value:Int):Void
    {
        hx_Effect_setValue_Unif_Int(nativeObject, uniform.native(), value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Effect_bind = NativeInterface.loadMember(Effect, "bind", 1);
    static var hx_Effect_static_createFromFile = NativeInterface.loadMember(Effect, "static_createFromFile", 3);
    static var hx_Effect_static_createFromSource = NativeInterface.loadMember(Effect, "static_createFromSource", 3);
    static var hx_Effect_static_getCurrentEffect = NativeInterface.loadMember(Effect, "static_getCurrentEffect", 0);
    static var hx_Effect_getId = NativeInterface.loadMember(Effect, "getId", 1);
    static var hx_Effect_getUniform_Str = NativeInterface.loadMember(Effect, "getUniform_Str", 2);
    static var hx_Effect_getUniform_Int = NativeInterface.loadMember(Effect, "getUniform_Int", 2);
    static var hx_Effect_getUniformCount = NativeInterface.loadMember(Effect, "getUniformCount", 1);
    static var hx_Effect_getVertexAttribute = NativeInterface.loadMember(Effect, "getVertexAttribute", 2);
    static var hx_Effect_setValue_Unif_Mat = NativeInterface.loadMember(Effect, "setValue_Unif_Mat", 3);
    static var hx_Effect_setValue_Unif_ArrMat_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrMat_Int", 4);
    static var hx_Effect_setValue_Unif_Smplr = NativeInterface.loadMember(Effect, "setValue_Unif_Smplr", 3);
    static var hx_Effect_setValue_Unif_ArrSmplr_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrSmplr_Int", 4);
    static var hx_Effect_setValue_Unif_V2 = NativeInterface.loadMember(Effect, "setValue_Unif_V2", 3);
    static var hx_Effect_setValue_Unif_ArrV2_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrV2_Int", 4);
    static var hx_Effect_setValue_Unif_V3 = NativeInterface.loadMember(Effect, "setValue_Unif_V3", 3);
    static var hx_Effect_setValue_Unif_ArrV3_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrV3_Int", 4);
    static var hx_Effect_setValue_Unif_V4 = NativeInterface.loadMember(Effect, "setValue_Unif_V4", 3);
    static var hx_Effect_setValue_Unif_ArrV4_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrV4_Int", 4);
    static var hx_Effect_setValue_Unif_ArrFlt_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrFlt_Int", 4);
    static var hx_Effect_setValue_Unif_ArrInt_Int = NativeInterface.loadMember(Effect, "setValue_Unif_ArrInt_Int", 4);
    static var hx_Effect_setValue_Unif_Flt = NativeInterface.loadMember(Effect, "setValue_Unif_Flt", 3);
    static var hx_Effect_setValue_Unif_Int = NativeInterface.loadMember(Effect, "setValue_Unif_Int", 3);
}

// END
