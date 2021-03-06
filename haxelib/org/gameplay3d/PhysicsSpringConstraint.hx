package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsSpringConstraint : public PhysicsGenericConstraint
class PhysicsSpringConstraint extends PhysicsGenericConstraint
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: inline void setAngularDampingX(float damping);
    public function setAngularDampingX(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularDampingX(nativeObject, damping);
    }

    // DECL: inline void setAngularDampingY(float damping);
    public function setAngularDampingY(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularDampingY(nativeObject, damping);
    }

    // DECL: inline void setAngularDampingZ(float damping);
    public function setAngularDampingZ(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularDampingZ(nativeObject, damping);
    }

    // DECL: inline void setAngularStrengthX(float strength);
    public function setAngularStrengthX(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularStrengthX(nativeObject, strength);
    }

    // DECL: inline void setAngularStrengthY(float strength);
    public function setAngularStrengthY(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularStrengthY(nativeObject, strength);
    }

    // DECL: inline void setAngularStrengthZ(float strength);
    public function setAngularStrengthZ(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setAngularStrengthZ(nativeObject, strength);
    }

    // DECL: inline void setLinearDampingX(float damping);
    public function setLinearDampingX(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearDampingX(nativeObject, damping);
    }

    // DECL: inline void setLinearDampingY(float damping);
    public function setLinearDampingY(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearDampingY(nativeObject, damping);
    }

    // DECL: inline void setLinearDampingZ(float damping);
    public function setLinearDampingZ(damping:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearDampingZ(nativeObject, damping);
    }

    // DECL: inline void setLinearStrengthX(float strength);
    public function setLinearStrengthX(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearStrengthX(nativeObject, strength);
    }

    // DECL: inline void setLinearStrengthY(float strength);
    public function setLinearStrengthY(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearStrengthY(nativeObject, strength);
    }

    // DECL: inline void setLinearStrengthZ(float strength);
    public function setLinearStrengthZ(strength:Float):Void
    {
        hx_PhysicsSpringConstraint_setLinearStrengthZ(nativeObject, strength);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsSpringConstraint_setAngularDampingX = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularDampingX", 2);
    static var hx_PhysicsSpringConstraint_setAngularDampingY = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularDampingY", 2);
    static var hx_PhysicsSpringConstraint_setAngularDampingZ = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularDampingZ", 2);
    static var hx_PhysicsSpringConstraint_setAngularStrengthX = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularStrengthX", 2);
    static var hx_PhysicsSpringConstraint_setAngularStrengthY = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularStrengthY", 2);
    static var hx_PhysicsSpringConstraint_setAngularStrengthZ = NativeInterface.loadMember(PhysicsSpringConstraint, "setAngularStrengthZ", 2);
    static var hx_PhysicsSpringConstraint_setLinearDampingX = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearDampingX", 2);
    static var hx_PhysicsSpringConstraint_setLinearDampingY = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearDampingY", 2);
    static var hx_PhysicsSpringConstraint_setLinearDampingZ = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearDampingZ", 2);
    static var hx_PhysicsSpringConstraint_setLinearStrengthX = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearStrengthX", 2);
    static var hx_PhysicsSpringConstraint_setLinearStrengthY = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearStrengthY", 2);
    static var hx_PhysicsSpringConstraint_setLinearStrengthZ = NativeInterface.loadMember(PhysicsSpringConstraint, "setLinearStrengthZ", 2);
}

// END
