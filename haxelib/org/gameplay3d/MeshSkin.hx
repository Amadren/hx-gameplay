package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.intern.impl.Transform_ListenerImpl;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.ObjectArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class MeshSkin : public Transform::Listener
class MeshSkin extends Transform_ListenerImpl
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _bindShape:Matrix;

    // DECL: const Matrix& getBindShape() const;
    public function getBindShape():IMatrix
    {
        return Macros.impersonateResult(_bindShape, hx_MeshSkin_getBindShape(nativeObject));
    }

    // DECL: Joint* getJoint(const char* id) const;
    public function getJoint_Str(id:String):Joint
    {
        return Joint.wrap(hx_MeshSkin_getJoint_Str(nativeObject, id));
    }

    // DECL: Joint* getJoint(unsigned int index) const;
    public function getJoint_Int(index:Int):Joint
    {
        return Joint.wrap(hx_MeshSkin_getJoint_Int(nativeObject, index));
    }

    // DECL: unsigned int getJointCount() const;
    public function getJointCount():Int
    {
        return hx_MeshSkin_getJointCount(nativeObject);
    }

    // DECL: int getJointIndex(Joint* joint) const;
    public function getJointIndex(joint:Joint):Int
    {
        return hx_MeshSkin_getJointIndex(nativeObject, joint.native());
    }

    // DECL: Vector4* getMatrixPalette() const;
    public function getMatrixPalette():ObjectArray<Vector4>
    {
        return new MatrixPalette(hx_MeshSkin_getMatrixPalette(nativeObject), getMatrixPaletteSize());
    }

    // DECL: unsigned int getMatrixPaletteSize() const;
    public function getMatrixPaletteSize():Int
    {
        return hx_MeshSkin_getMatrixPaletteSize(nativeObject);
    }

    // DECL: Model* getModel() const;
    public function getModel():Model
    {
        return Model.wrap(hx_MeshSkin_getModel(nativeObject));
    }

    // DECL: Joint* getRootJoint() const;
    public function getRootJoint():Joint
    {
        return Joint.wrap(hx_MeshSkin_getRootJoint(nativeObject));
    }

    // DECL: void setBindShape(const float* matrix);
    public function setBindShape(matrix:Float):Void
    {
        hx_MeshSkin_setBindShape(nativeObject, matrix);
    }

    // DECL: void setRootJoint(Joint* joint);
    public function setRootJoint(joint:Joint):Void
    {
        hx_MeshSkin_setRootJoint(nativeObject, joint.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MeshSkin_getBindShape = NativeInterface.loadMember(MeshSkin, "getBindShape", 1);
    static var hx_MeshSkin_getJoint_Str = NativeInterface.loadMember(MeshSkin, "getJoint_Str", 2);
    static var hx_MeshSkin_getJoint_Int = NativeInterface.loadMember(MeshSkin, "getJoint_Int", 2);
    static var hx_MeshSkin_getJointCount = NativeInterface.loadMember(MeshSkin, "getJointCount", 1);
    static var hx_MeshSkin_getJointIndex = NativeInterface.loadMember(MeshSkin, "getJointIndex", 2);
    static var hx_MeshSkin_getMatrixPalette = NativeInterface.loadMember(MeshSkin, "getMatrixPalette", 1);
    static var hx_MeshSkin_getMatrixPaletteSize = NativeInterface.loadMember(MeshSkin, "getMatrixPaletteSize", 1);
    static var hx_MeshSkin_getModel = NativeInterface.loadMember(MeshSkin, "getModel", 1);
    static var hx_MeshSkin_getRootJoint = NativeInterface.loadMember(MeshSkin, "getRootJoint", 1);
    static var hx_MeshSkin_setBindShape = NativeInterface.loadMember(MeshSkin, "setBindShape", 2);
    static var hx_MeshSkin_setRootJoint = NativeInterface.loadMember(MeshSkin, "setRootJoint", 2);
}

// END

private class MatrixPalette extends ObjectArray<Vector4>
{
    public function new(nativeObject, length)
    { super(Vector4, nativeObject, length); }
}
