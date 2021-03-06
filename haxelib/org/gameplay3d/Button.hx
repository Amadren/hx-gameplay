package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Button : public Label
class Button extends Label
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Button* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):Button
    {
        return Button.wrap(hx_Button_static_create(id, style.native()));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Button_static_create = NativeInterface.loadMember(Button, "static_create", 2);
}

// END
